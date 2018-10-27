# 两个文件的交集
grep -F -f a.txt b.txt | sort | uniq

# 两个文件的差集
# B-A
grep -F -v -f a.txt b.txt | sort | uniq

# A-B
grep -F -v -f b.txt a.txt | sort | uniq
