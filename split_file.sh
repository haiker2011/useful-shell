# 将一个大文件拆分为多个文件
# 文件拆分为大小为2G，拆分文件的前缀为test.tar.gz. ，默认拆分为test.tar.gz.aa,ab,ac...
cat test.tar.gz | split -b 2G - test.tar.gz.

# 将多个拆分的文件合并为一个文件
cat test.tar.gz.a* > test.tar.gz
