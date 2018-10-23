# 下载安装jq
sudo apt install jq

# 提取json数据中nc_news_url和cont字段
jq -c '{nc_news_url:.nc_news_url,cont:.cont}' test.txt > newtest.txt

# 格式化输出
jq -r . test.txt

# 输出id字段
echo ${test.txt} |jq -r '.id'
