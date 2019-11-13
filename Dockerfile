FROM ubuntu

LABEL maintainer.name="hebo" maintainer.email="1113727572@qq.com"

RUN apt update \
 && apt install -y openssh-server \
 && mkdir /root/.ssh \
 && echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcHUpH4Y6Zvnjw/cfiSL+bM6x/abnJbp14FD7WDIssz70PLgsOLaevjZ5e3hNX4CkwOsibRQpWoRcpxSBzmdQihVAXjLFlAex4s4K7jiZxBs5mhTk3IoFXcrMHuuuB4kiwWOgw/OV6F/2AaI1YQ76PnlqCY7kORGVn1HFicnFNJjl7ydkWzoUOMhIOYNrLXkXtEilfdIeNECHuocMT3d5raZOZHRfXUf/d12zUUu/Huz6++Hv2MYF4CAQIMCpvpa//bZAbKV+Gq5Sgr0s/WTbBGyDUwajq907CnAy/OYASpxHyYM138uxwwG7kHeF5w/orb4/kMR66Z16FHNoGeQzn root@36f0a766ba76' > /root/.ssh/authorized_keys \
 && echo '#!/bin/bash\n/etc/init.d/ssh start\n/bin/bash' > /entrypoint.sh && chmod +111 /entrypoint.sh

CMD ["/entrypoint.sh"]
