#!/usr/bin/env bash

msg() {
    echo -e "\e[1;32m$*\e[0m"
}

cd DumprX
export TERM=xterm
if [ ${{ github.event.inputs.UPLOAD_TO_GITHUB }} == true ]] then
    msg Firmware Dump Will Be Posted On Github
    echo "${ env.GTOKEN }" >> .github_token
    echo "${ env.GTO }" >> .github_orgname
else
    echo ""
fi
echo "${ env.TGT }" >> .tg_token
echo "${ env.CTI }" >> .tg_chat
git config --global user.name "${{ env.UN }}"
git config --global user.email "${{ env.UEM }}"
bash dumper.sh "${{ env.FUR }}"
