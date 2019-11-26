FROM ubuntu

LABEL maintainer.name="hebo" maintainer.email="1113727572@qq.com"

ENV ID_PUB="none"

RUN apt update \
 && apt install -y openssh-server \
 && mkdir /root/.ssh \
 && echo '#!/bin/bash\n\
test -f /root/.ssh/authorized_keys || echo "$ID_PUB" > /root/.ssh/authorized_keys\n\
/etc/init.d/ssh start\n\
/bin/bash\n\
' > /entrypoint.sh && chmod +111 /entrypoint.sh

CMD ["/entrypoint.sh"]
