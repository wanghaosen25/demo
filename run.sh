$dir$="/usr/bin"
wget https://github.com/xtls/xray-core/releases/latest/download/xray-linux-64.zip -O $dir$/dist.zip
unzip $dir$/dist.zip
cat<<EOF>$dir$/config.json
{
	"inbounds":[{
		"port":$PORT,
		"protocol":"vless",
		"settings":{
			"decryption":"none",
			"clients":[{
				"id":"$id"
			}]
		},
		"streamSettings":{
			"network":"ws"
		}
	}],
	"outbounds":[{
		"protocol":"freedom"
	}]
}
EOF
chmod +x $dir$/xray
$dir$/xray