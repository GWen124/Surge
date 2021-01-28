#!/bin/sh
function JDJS() {
git clone https://github.com/Tartarus2014/Script.git /Tartarus2014
npm install
}

 if [ ! -d "/Tartarus2014/" ]; then
    echo "未检查到仓库脚本，初始化下载相关脚本"
    JDJS
else
    echo "更新脚本文件"
    git -C /Tartarus2014 reset --hard
    git -C /Tartarus2014 pull --rebase
    npm install --loglevel error
fi


cp -f Tartarus2014/jd*.js /scripts
