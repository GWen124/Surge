# 脚本安装

/*
	[Script]
	AQI-US = type=http-response, pattern=https://weather-data.apple.com/v1/weather/[\w-]+/[0-9]+\.[0-9]+/[0-9]+\.[0-9]+\?include=, requires-body=true, script-path=/path/to/iOS_Weather_AQI_Standard.js
	[MITM]
	hostname = weather-data.apple.com
*/