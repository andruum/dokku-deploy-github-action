FROM alpine:3.7

RUN apk add --no-cache bash git openssh-client git-lfs

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
