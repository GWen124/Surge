#必须要的默认定时任务请勿删除
52 */1 * * * docker_entrypoint.sh >> /scripts/logs/default_task.log 2>&1
# 每3天的23:50分清理一次日志
50 23 */3 * * rm -rf /scripts/logs/*.log

[MITM]
hostname = %APPEND% wq.jd.com, draw.jdfcloud.com, jdjoy.jd.com, account.huami.com

#LXK9301:https://github.com/LXK9301/jd_scripts/blob/master/docker/crontab_list.sh
获取多账号京东Cookie = type=http-request,pattern=^https:\/\/wq\.jd\.com\/user_new\/info\/GetJDUserInfoUnion,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/JD_extra_cookie.js,script-update-interval=0
京豆变动通知 = type=cron,cronexp=2 9 * * *,wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_bean_change.js
领京豆额外奖励 = type=cron,cronexp="10 7 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_bean_home.js
东东超市兑换奖品 = type=cron,cronexp="0 0 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_blueCoin.js
口袋书店 = type=cron,cronexp="1 8,12,18 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_bookshop.js
京东汽车 = type=cron,cronexp="10 7 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_car.js
京东汽车兑换 = type=cron,cronexp="0 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_car_exchange.js
签到领现金 = type=cron,cronexp="2 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_cash.js
摇京豆 = type=cron,cronexp="5 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_club_lottery.js
crazyJoy任务 = type=cron,cronexp="10 7 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_crazy_joy.js
天天提鹅 = type=cron,cronexp="10 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_daily_egg.js
京喜工厂 = type=cron,cronexp="10 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_dreamFactory.js
集鞭炮赢京豆 = type=cron,cronexp="10 8,21 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_firecrackers.js
东东农场 = type=cron,cronexp="5 6-18/6 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_fruit.js
获取互助码 = type=cron,cronexp="20 13 * * 6",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_get_share_code.js
京东神仙书院 = type=cron,cronexp="20 8 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_immortal.js
东东工厂 = type=cron,cronexp="10 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_jdfactory.js
京东赚赚 = type=cron,cronexp="10 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_jdzz.js
京东宠汪汪 = type=cron,cronexp="15 0-23/2 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy.js
京东宠汪汪喂食 = type=cron,cronexp="15 0-23/1 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_feedPets.js
宠汪汪强制为别人助力= type=http-request,pattern=^https:\/\/draw\.jdfcloud\.com\/\/pet\/enterRoom\/h5\?invitePin=.*(&inviteSource=task_invite&shareSource=\w+&inviteTimeStamp=\d+&openId=\w+)?&reqSource=weapp|^https:\/\/draw\.jdfcloud\.com(\/mirror)?\/\/pet\/helpFriend\?friendPin,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_help.js
宠汪汪积分兑换奖品 = type=cron,cronexp="0 0-16/8 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_reward.js
宠汪汪邀请助力与赛跑助力 = type=cron,cronexp="15 10 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_run.js
宠汪汪助力更新Token = type=http-response,pattern=^https:\/\/draw\.jdfcloud\.com(\/mirror)?\/\/api\/user\/addUser\?code=, requires-body=1, max-size=0, script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_run.js
宠汪汪助力获取Token = type=http-request,pattern=^https:\/\/draw\.jdfcloud\.com(\/mirror)?\/\/api\/user\/user\/detail\?openId=, requires-body=1, max-size=0, script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_run.js
宠汪汪偷好友积分与狗粮 = type=cron,cronexp="0 0-10/2 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_joy_steal.js
京喜农场 = type=cron,cronexp="0 9,12,18 * * *",timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_jxnc.js
京喜农场cookie = type=http-request,pattern=^https\:\/\/wq\.jd\.com\/cubeactive\/farm\/dotask,requires-body=0,max-size=0,script-path= https://raw.githubusercontent.com/whyour/hundun/master/quanx/jx_nc.cookie.js
京东快递签到 = type=cron,cronexp="10 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_kd.js
京东直播 = type=cron,cronexp="10-20/5 12 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_live.js
京东摇钱树 = type=cron,cronexp="3 0-23/2 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_moneyTree.js
点点券 = type=cron,cronexp="10 0,20 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_necklace.js
京东年货节 = type=cron,cronexp="1 7 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nh.js
京东炸年兽🧨 = type=cron,cronexp="10 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nian.js
京东收🧨 = type=cron,cronexp="50 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nianCollect.js
京东炸年兽AR = type=cron,cronexp="0 9 * * *",wake-system=1,timeout=36000,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nian_ar.js
京东炸年兽签到任务🧨 = type=cron,cronexp="30 8 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nian_sign.js
京东炸年兽小程序🧨 = type=cron,cronexp="50 8 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_nian_wechat.js
东东萌宠 = type=cron,cronexp="15 6-18/6 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_pet.js
聚宝盆投狗粮辅助 = type=http-response,pattern=^https:\/\/jdjoy\.jd\.com\/pet\/getPetTreasureBox|^https:\/\/draw\.jdfcloud\.com\/\/pet\/getPetTreasureBox,requires-body=1,max-size=0,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_petTreasureBox.js
京东金融养猪猪 = type=cron,cronexp="12 * * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_pigPet.js
京东种豆得豆 = type=cron,cronexp="1 7-21/2 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_plantBean.js
京东全民开红包 = type=cron,cronexp=1 1 * * *,wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_redPacket.js
进店领豆 = type=cron,cronexp="10 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_shop.js
东东小窝 = type=cron,cronexp="16 22 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_small_home.js
天天加速 = type=cron,cronexp="8 0-23/3 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_speed.js
东东超市 = type=cron,cronexp="11 1-23/5 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_superMarket.js
十元街 = type=cron,cronexp="10 7 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_syj.js
注销京东会员卡 = type=cron,cronexp="55 23 * * 6",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_unbind.js
取关京东店铺商品 = type=cron,cronexp="55 23 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jd_unsubscribe.js
京喜签到 = type=cron,cronexp="5 0 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/jx_sign.js
小米运动 = type=cron,cronexp="15 17 * * *",wake-system=1,timeout=3600,script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/backUp/xmSports.js
小米运动获取Token = type=http-response,pattern=^https:\/\/account\.huami\.com\/v2\/client\/login, requires-body=1, max-size=0, script-path=https://raw.githubusercontent.com/LXK9301/jd_scripts/master/backUp/xmSports.js


#shylocks:https://github.com/shylocks/Loon/blob/main/docker/crontab_list.sh
# 宝洁美发屋
1 8,9 14-31/1 1 * node /scripts/jd_bj.js >> /scripts/logs/jd_bj.log 2>&1

# 工业品爱消除
20 * * * * node /scripts/jd_gyec.js >> /scripts/logs/jd_gyec.log 2>&1

# 超级直播间红包雨
30,31 20-23/1 19 1 * node /scripts/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

# 直播间红包雨
0,1 19-21/1 * * * node /scripts/jd_live_redrain2.js >> /scripts/logs/jd_live_redrain2.log 2>&1

# 半点红包雨
30,31 12-23/1 * * * node /scripts/jd_live_redrain_half.js >> /scripts/logs/jd_live_redrain_half.log 2>&1

# 年货直播红包雨
0 0,9,11,13,15,17,19,20,21,23 3,5,20-30/1 1,2 * node /scripts/jd_live_redrain_nian.js >> /scripts/logs/jd_live_redrain_nian.log 2>&1

# 官方号直播红包雨
0 0,9,11,13,15,17,19,20,21,22,23 * * * node /scripts/jd_live_redrain_offical.js >> /scripts/logs/jd_live_redrain_offical.log 2>&1

# 盲盒抽京豆
1 7 * * * node /scripts/jd_mh.js >> /scripts/logs/jd_mh.log 2>&1

# 京东秒秒币
10 7 * * * node /scripts/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1

# 海产新年抽奖
10 7 * * * node /scripts/jd_sx.js >> /scripts/logs/jd_sx.log 2>&1

# 京年团圆pick
5 0 19,20 1 * node /scripts/jd_vote.js >> /scripts/logs/jd_vote.log 2>&1

# 京东粉丝专享
10 0 * * * node /scripts/jd_wechat_sign.js >> /scripts/logs/jd_wechat_sign.log 2>&1

# 小鸽有礼
5 7 * * * node /scripts/jd_xg.js >> /scripts/logs/jd_xg.log 2>&1

# 东东爱消除
0 * * * * node /scripts/jd_xxl.js >> /scripts/logs/jd_xxl.log 2>&1

# 个护爱消除
40 * * * * node /scripts/jd_xxl_gh.js >> /scripts/logs/jd_xxl_gh.log 2>&1

