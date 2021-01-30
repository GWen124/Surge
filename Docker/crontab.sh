#############################################补充#############################################


# 定时更新
#0 */1 * * * git -C /scripts/ pull |ts >> /scripts/logs/pull.log 2>&1

# 定时更新远程Shell
#53 */1 * * * sh /scripts/docker/docker_entrypoint.sh >> /scripts/logs/docker_entrypoint.log 2>&1

#超级直播间任务赢京豆
40 21 * * * node /scripts/jd_super.js >> /scripts/logs/jd_super.log 2>&1


##############################################################################################


#超级直播间任务赢京豆
40 21 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_super.js >> /scripts/logs/jd_super.log 2>&1


##############################################################################################


#超级直播间任务赢京豆
40 21 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_super.js >> /scripts/logs/jd_super.log 2>&1


##############################################################################################


############################################################################################
# shylocks:
# https://github.com/shylocks/Loon/raw/main/docker/crontab_list.sh
# 更新于：2021.01.23
############################################################################################
# 宝洁美发屋
1 8,9 14-31/1 1 * node https://gitee.com/waynesg/jdscript/raw/master/jd_bj.js >> /scripts/logs/jd_bj.log 2>&1

# 工业品爱消除
#20 * * * * node /scripts/jd_gyec.js >> /scripts/logs/jd_gyec.log 2>&1

# 超级直播间红包雨
3#0,31 20-23/1 28 1 * node http://qnn9kdmd1.hn-bkt.clouddn.com/jd_live_redrain.js >> /scripts/logs/jd_live_redrain.log 2>&1

# 直播间红包雨
#30,31 20-23/1 28 1 * node http://qnn9kdmd1.hn-bkt.clouddn.com/jd_live_redrain2.js >> /scripts/logs/jd_live_redrain2.log 2>&1

# 半点红包雨
30,31 12-23/1 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_live_redrain_half.js >> /scripts/logs/jd_live_redrain_half.log 2>&1

# 年货直播红包雨
0 0,9,11,13,15,17,19,20,21,23 3,5,20-30/1 1,2 * node https://gitee.com/waynesg/jdscript/raw/master/jd_live_redrain_nian.js >> /scripts/logs/jd_live_redrain_nian.log 2>&1

# 官方号直播红包雨
0 0,9,11,13,15,17,19,20,21,22,23 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_live_redrain_offical.js >> /scripts/logs/jd_live_redrain_offical.log 2>&1

# 盲盒抽京豆
1 7 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_mh.js >> /scripts/logs/jd_mh.log 2>&1

# 京东秒秒币
10 7 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_ms.js >> /scripts/logs/jd_ms.log 2>&1

# 海产新年抽奖
10 7 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_sx.js >> /scripts/logs/jd_sx.log 2>&1

# 京年团圆pick
5 0 19,20 1 * node https://gitee.com/waynesg/jdscript/raw/master/jd_vote.js >> /scripts/logs/jd_vote.log 2>&1

# 京东粉丝专享
10 0 * * * node https://gitee.com/waynesg/jdscript/raw/master/jd_wechat_sign.js >> /scripts/logs/
