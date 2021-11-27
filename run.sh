wget github.com/xtls/xray-core/releases/latest/download/xray-linux-64.zip -O /dist.zip 
unzip /dist.zip -d /xray
cat<<EOF>/cfg.json
{"inbounds":[{"port":$PORT,"protocol":"vless","settings":{"decryption":"none","clients":[{"id":"$id"}]},"streamSettings":{"network":"ws"}}],"outbounds":[{"protocol":"freedom"}]}
EOF
/xray/xray -c /cfg.json