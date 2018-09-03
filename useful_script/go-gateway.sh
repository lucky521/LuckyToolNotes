#!/usr/bin/expect -f
# 注意这种方式登陆进去之后， rz和sz就不好使了

set password "密码"

# goto jps
spawn ssh jps
set timeout 30
expect "模式匹配"
send "$password\r"

# goto 75
expect "Opt or ID>:"
send "1\r"
expect "ID>:"
send "0\r"


# goto g85
expect "模式匹配"
sleep 1
send "g85\r"

interact
