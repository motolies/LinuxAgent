# Linux Agent

이 프로그램은 서비스 중인 nginx 서비스에 reload signal을 보낼 수 있도록 만들어졌습니다.

## 설치

```bash
# down
$ git clone https://github.com/motolies/LinuxAgent.git

# install & start
$ cd LinuxAgent/service
$ chmod 775 install.sh
$ ./install.sh

```

## 사용법

localhost:8000 으로 listening 하므로 ec2 외부에서 ip:8000/reload 를 get 방식으로 호출하면 아래 명령을 실행함

```bash
sudo systemctl reload nginx
```
