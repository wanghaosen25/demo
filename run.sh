cat<<EOF>/cfg.json
{"inbounds":[{"port":443,"protocol":"vless","settings":{"decryption":"none","clients":[{"id":"$id"}]},"streamSettings":{"network":"ws"}}],"outbounds":[{"protocol":"freedom"}]}
EOF
xray -c /cfg.json