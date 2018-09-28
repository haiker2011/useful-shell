# 删除文档filename中空行
cat filename | sed -e '/^$/d' > filename
