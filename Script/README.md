# Surge脚本

## 京东比价
````
# 不生效或失效的检查一下配置有没有这两条复写，删除试试
# ^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=start - reject
# ^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=(start|queryMaterialAdverts) - reject

[Script]
http-response ^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig|basicConfig) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/jd_price.js
	
[MITM]
hostname = api.m.jd.com
````

## 京东多合一签到
````
[Script]
京东多合一签到 = type=cron,cronexp=5 0 * * *,wake-system=1,timeout=60,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js
获取京东Cookie = type=http-request,pattern=https:\/\/api\.m\.jd\.com\/client\.action.*functionId=signBean,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/JD-DailyBonus/JD_DailyBonus.js

[MITM]
hostname = api.m.jd.com
````


## iOS_Weather_AQI_Stand
````
[Script]
Apple天气AQI-US = type=http-response,pattern=https://weather-data.apple.com/v1/weather/[\w-]+/[0-9]+\.[0-9]+/[0-9]+\.[0-9]+\?,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/waynesg/iOS_Weather/main/iOS_Weather_AQI_Standard.js,script-update-interval=0

[MITM]
hostname = weather-data.apple.com
````


## DNSPod
````
[Script]
DNSPod = type=dns,script-path=https://raw.githubusercontent.com/langkhach270389/Scripting/master/Surge/dnspod.js,script-update-interval=0
````


## 百度贴吧签到:BaiDuTieBa.js
````
[Script]
贴吧签到 = type=cron,cronexp=0 9 * * *,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/BDTieBa-DailyBonus/TieBa.js
贴吧获取Cookie = type=http-request,pattern=https?:\/\/(c\.tieba\.baidu\.com|180\.97\.\d+\.\d+)\/c\/s\/login,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/BDTieBa-DailyBonus/TieBa.js

[MITM] 
hostname= c.tieba.baidu.com
````


## 爱奇艺签到 iQIYI-DailyBonus.js
````
[Script]
爱奇艺签到 = type=cron,cronexp=0 9 * * *,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/iQIYI-DailyBonus/iQIYI.js
爱奇艺获取Cookie = type=http-request,pattern=^https?:\/\/iface(\d)?\.iqiyi\.com\/,script-path=https://raw.githubusercontent.com/NobyDa/Script/master/iQIYI-DailyBonus/iQIYI.js

[MITM] 
hostname= ifac*.iqiyi.com
````

## 什么值得买
····
[MITM]
*.smzdm.com

[Script]
http-request ^https:\/\/www\.smzdm\.com\/?.? script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/smzdm/smzdm.cookie.js
cron "10 0 0 * * *" script-path=https://raw.githubusercontent.com/chavyleung/scripts/master/smzdm/smzdm.js
····
