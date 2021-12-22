#!/bin/bash

cd ..

# 실행할 쉘 권한 변경
sudo chmod -R 775 shell/

# flask gunicorn 설치
python3 -m venv venv
. venv/bin/activate
pip install flask
pip install gunicorn


# 서비스 등록 및 실행
cd service
pwd=`pwd` &&
pwds=`echo $pwd | sed "s/\/service//g ; s/\//925DF2DA/g "` &&
sed -e "s/##cwd/$pwds/g" temp.service | sed "s/925DF2DA/\//g"  > wbagent.service

sudo cp -f wbagent.service /etc/systemd/system/wbagent.service
sudo systemctl enable /etc/systemd/system/wbagent.service
sudo systemctl start wbagent.service


