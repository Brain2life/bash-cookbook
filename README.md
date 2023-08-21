# Bash script to check if given IP address is private or public

Related article: []()

## Test cases
test_ip "10.0.0.5" "private"  
test_ip "192.168.1.1" "private"  
test_ip "172.17.5.6" "private"  
test_ip "8.8.8.8" "public"  
test_ip "172.15.5.6" "public"  
test_ip "192.169.1.1" "public"  