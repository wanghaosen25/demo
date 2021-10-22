cat<<EOF>/etc/config.json
{
	"inbounds":[{
		"port":443,
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
/usr/bin/xray -c /etc/config.json