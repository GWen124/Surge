# 知乎助手

## 来源
https://github.com/blackmatrix7/ios_rule_script/tree/master/script/zhihu

### 模块plus
````
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_plus.sgmodule
````
### 模块Lite
````
https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/zhihu_lite.sgmodule
````

## 介绍

去除知乎广告，提供付费内容提醒、黑名单增强等优化阅读体验的功能。

分为Plus和Lite两个版本，Lite只提供最纯粹的去广告功能，Plus带有一些优化阅读体验的功能。

目前已实现(带✨的为Plus版本的功能)：

1. 去除知乎开屏的广告
2. 去除关注列表的广告
3. 去除推荐列表的广告
4. 去除回答列表的广告
5. 去除回答列表的圆桌
6. 去除回答页面的广告
7. 去除知乎直播红点
8. 去除知乎指南提示
9. 去除未读消息的红点
10. 知乎网页版去广告 [#21](https://github.com/blackmatrix7/ios_rule_script/issues/21)
11. 拦截知乎内测邀请
12. 去除预置关键字广告(beta)
13. 付费内容文首提醒(beta)✨
14. 推广内容文首提醒(beta)✨
15. 拦截部分回答预加载以节约流量✨
16. 去除推荐列表的付费推荐内容✨
17. 去除官方账号的推广消息✨
18. 去除推荐列表中黑名单用户的回答✨
19. 去除回答列表中黑名单用户的回答✨
20. 去除关注列表顶部的最常访问✨
21. 精简首页顶部的标签页✨
22. 屏蔽消息页面的知乎活动助手✨
23. 减少推荐列表内的视频(alpha)✨

## 最近更新

1. 增加精简首页顶部标签页的功能
2. 屏蔽消息页面的知乎活动助手
3. 减少推荐列表内的视频，不一定有效
4. 增加未登录知乎账户的支持
5. 增加知乎网页版去广告 [#21](https://github.com/blackmatrix7/ios_rule_script/issues/21)
6. 修复想法不存在的问题
7. 营销内容文首提醒
8. 付费内容文首提醒

## 特别说明

如出现执行异常，绝大部分是因为引用过多的去广告规则，规则之间互相冲突覆盖导致。

建议解决方法：

1. 使用一个不含其他规则的空白配置文件验证去广告效果
2. 将知乎去广告规则的优先级调整到最高
3. 重启知乎
4. 清理知乎的缓存
5. 卸载知乎后重装
6. 安装已经验证过的版本

## 去广告

对知乎内置的部分广告进行去除，目前验证情况如下：

**2020年9月23日：**

知乎 V6.57.0(2708)

Surge 4.10.0(1819) TF  验证通过，Shadowrocket 2.1.62(1092) TF 纯去广告功能验证通过。

**2020年9月18日：**

知乎 V6.56.0(2676)

Loon TF 2.1.3(204)  验证通过。

**2020年8月22日：**

知乎 V6.52.0(2548)

Surge4.10.0(1800) TF、Quantumult X 1.0.14(367) TF、Loon 2.1.3(197) TF  验证通过。

**2020年8月8日：**

知乎 V6.51.1(2518)

Surge4.10.0(1788) TF、Quantumult X 1.0.14(359) TF、Loon 2.1.3(191) TF 验证通过。

## 付费内容提醒(beta)

遇到需要付费阅读的回答时，会**将付费内容的提醒置顶**。避免阅读中途发现内容需要付费的情况，提高阅读体验。

浅色/深色效果如下图：

![](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/images/04.jpg)

## 推广内容提醒(beta)

遇到含有营销推广/购物推广内容的回答时，会将含有推广内容的提醒置顶，自行判断是否继续阅读。

![](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/images/05.png)

## 精简顶部标签页

精简顶部标签页的功能，需要对原先拦截的appcloud2.zhihu.com域名进行放行，通过脚本对Response进行修改以实现此功能。**原先有对此域名进行拦截的规则，务必进行去除，否则功能不会生效。**

## 黑名单增强

知乎的黑名单设计，无法屏蔽黑名单用户的公开信息。将某人拉黑后，他的回答依旧会出现在推荐列表和回答列表中。

黑名单增强就是对黑名单用户的回答进行屏蔽，让他的回答从推荐列表和回答列表中消失。(如果只为在推荐列表屏蔽某人，建议用知乎提供的屏蔽用户的方法，这是在服务器端进行的更加高效的屏蔽。)

黑名单匹配方式为用户名，同名用户都会被屏蔽，“[已重置]”除外。

屏蔽后，如果需要定向查看某个黑名单的用户，请搜索他的名称，然后点进去看他的回答。

#### 自定义黑名单

**首次使用时，需要获取一次完整的黑名单**。请从“我的”-“设置”-“屏蔽设置”-“管理黑名单”，进入黑名单列表。不断往下滑动，直到滑动到列表底部。滑动到底部后，会弹出通知“获取脚本黑名单结束”，表示黑名单获取完成。

脚本黑名单可以跟随知乎登录账户切换，每次切换知乎不同的账户时，请重新获取一次黑名单。

每次添加或移除黑名单用户，脚本内置的黑名单也会同步更新。

![](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/images/01.jpg)

![](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/images/03.jpg)

![](https://raw.githubusercontent.com/blackmatrix7/ios_rule_script/master/script/zhihu/images/02.jpg)
