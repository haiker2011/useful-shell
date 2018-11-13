# :hammer: useful-shell
收集自己常用的shell运维脚本

## 1. 统计行数
```sh
# 统计test.txt行数
cat test.txt |wc -l

# 统计test.txt行数
wc -l test.txt
```

## 2. 删除文件空行
```sh
# 删除文档filename中空行
cat filename | sed -e '/^$/d' > filename

# 多行内容显示在一行中
cat filename |xargs echo

# 删除文件中包含特定字符串的行
# 删除test.txt文件包含“abc”和“efg”字符串的行，然后将结果存到new_test.txt
sed -e '/abc/d;/efg/d' test.txt > new_test.txt
```

## 3. `jq`处理json
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

## 4. 文件拆分
```sh
# 将一个大文件拆分为多个文件
# 文件拆分为大小为2G，拆分文件的前缀为test.tar.gz. ，默认拆分为test.tar.gz.aa,ab,ac...
cat test.tar.gz | split -b 2G - test.tar.gz.

# 将多个拆分的文件合并为一个文件
cat test.tar.gz.a* > test.tar.gz
```

## 5. 文件去重
```sh
# sort 去重，全局去重
sort -u test.txt
```

 ```sh
 sort test.txt | uniq
 ```

```sh
# 去除连续的重复行
uniq test.txt
```

## 6. 文件交集和差集
```sh
# 两个文件的交集
grep -F -f a.txt b.txt | sort | uniq
```

```sh
# 两个文件的差集
# B-A
grep -F -v -f a.txt b.txt | sort | uniq
```

```sh
# A-B
grep -F -v -f b.txt a.txt | sort | uniq
```

## 7. Redis操作

```sh
# 登录Redis
redis-cli
```

```sh
# 清空数据库
flushall
```

```sh
# 查看所有key
keys *
```

```sh
# 导出Redis数据库
redis-dump –u 127.0.0.1:6379 > db.rdb
```
