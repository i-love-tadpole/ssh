# doker hebo2019/ssh
---
usage:
---
    docker run --network some-network --ip some-ip -e ID_PUB="$(cat ~/.ssh/id_rsa.pub)" hebo2019/ssh
    
then connecting with ssh without inputing password by:

    ssh root@some-ip
