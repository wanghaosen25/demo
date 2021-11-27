wget github.com/xtls/xray-core/releases/latest/download/xray-linux-64.zip -O /p.zip 
unzip /p.zip -d /p
cat<<EOF>/p/config.json
{"inbounds":[{"port":$PORT,"protocol":"vless","settings":{"decryption":"none","clients":[{"id":"$id"}]},"streamSettings":{"network":"ws"}}],"outbounds":[{"protocol":"freedom"}]}
EOF
/p/xray