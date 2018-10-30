# 登录Redis
redis-cli

# 清空数据库
flushall

# 查看所有key
keys *

# 导出Redis数据库
redis-dump –u 127.0.0.1:6379 > db.rdb
