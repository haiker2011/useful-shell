# useful-shell
收集自己常用的shell运维脚本

## 1.统计行数
```sh
# 统计test.txt行数
cat test.txt |wc -l

# 统计test.txt行数
wc -l test.txt
```

## 2.删除文件空行
```sh
# 删除文档filename中空行
cat filename | sed -e '/^$/d' > filename

# 多行内容显示在一行中
cat filename |xargs echo
```

## 3.`jq`处理json
```sh
# 下载安装jq
sudo apt install jq

# 提取json数据中nc_news_url和cont字段
jq -c '{nc_news_url:.nc_news_url,cont:.cont}' test.txt > newtest.txt

# 格式化输出
jq -r . test.txt

# 输出id字段
echo ${test.txt} |jq -r '.id'
```

## 4.文件拆分
```sh
# 将一个大文件拆分为多个文件
# 文件拆分为大小为2G，拆分文件的前缀为test.tar.gz. ，默认拆分为test.tar.gz.aa,ab,ac...
cat test.tar.gz | split -b 2G - test.tar.gz.

# 将多个拆分的文件合并为一个文件
cat test.tar.gz.a* > test.tar.gz
```
