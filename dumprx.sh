#!/usr/bin/env bash

msg() {
    echo -e "\e[1;32m$*\e[0m"
}

cd DumprX
export TERM=xterm
if [[ ${UTG} == true ]] then
    msg Firmware Dump Will Be Posted On Github
    echo ${GTOKEN} >> .github_token
    echo ${GTO} >> .github_orgname
    echo ${TGT} >> .tg_token
    echo ${CTI} >> .tg_chat
else
    echo ""
fi
git config --global user.name ${UN}
git config --global user.email ${UEM}
bash dumper.sh ${FUR}
