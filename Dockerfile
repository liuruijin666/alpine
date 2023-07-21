FROM alpine:3.18.2
RUN sed -i "s/dl-cdn.alpinelinux.org/repo.huaweicloud.com/g" /etc/apk/repositories && apk update && apk add tzdata bash && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone && ln -fs /bin/bash /bin/sh
ENTRYPOINT /bin/bash
