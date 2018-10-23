# 删除文档filename中空行
cat filename | sed -e '/^$/d' > filename

# 多行内容显示在一行中
cat filename |xargs echo
