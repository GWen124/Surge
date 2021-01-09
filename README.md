# Surge

## 京东比价

	# 不生效或失效的检查一下配置有没有这两条复写，删除试试
	# ^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=start - reject
	# ^https?:\/\/api\.m\.jd.com\/client\.action\?functionId=(start|queryMaterialAdverts) - reject
	[Script]
	http-response ^https?://api\.m\.jd\.com/client\.action\?functionId=(wareBusiness|serverConfig|basicConfig) requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/jd_price.js
	[MITM]
	hostname = api.m.jd.com


## 淘宝比价

	# 不生效或失效的需要卸载 tb 重装，注意不开脚本进 tb 会失效
	[Script]
	http-request ^http://.+/amdc/mobileDispatch requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js
	http-response ^https?://trade-acs\.m\.taobao\.com/gw/mtop\.taobao\.detail\.getdetail requires-body=1,script-path=https://raw.githubusercontent.com/yichahucha/surge/master/tb_price.js
	[MITM]
	hostname = trade-acs.m.taobao.com
