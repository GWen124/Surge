#############################################补充#############################################


# 定时更新
#0 */1 * * * git -C /scripts/ pull |ts >> /scripts/logs/pull.log 2>&1

# 定时更新远程Shell
53 */1 * * * sh /scripts/docker/docker_entrypoint.sh >> /scripts/logs/docker_entrypoint.log 2>&1

#超级直播间任务赢京豆
40 21 * * * node /scripts/jd_super.js >> /scripts/logs/jd_super.log 2>&1


##############################################################################################
