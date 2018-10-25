# 删除文档filename中空行
cat filename | sed -e '/^$/d' > filename

# 多行内容显示在一行中
cat filename |xargs echo

# 删除文件中包含特定字符串的行
# 删除test.txt文件包含“abc”和“efg”字符串的行，然后将结果存到new_test.txt
sed -e '/abc/d;/efg/d' test.txt > new_test.txt
