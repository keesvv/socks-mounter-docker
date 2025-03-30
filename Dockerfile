FROM alpine:3.21

RUN apk add --no-cache \
    sshfs \
    tsocks

COPY scripts/mount-fs /usr/local/bin/mount-fs
COPY scripts/tsocks-ssh /usr/local/bin/tsocks-ssh

ENV PATH="/usr/local/bin:$PATH"

ENTRYPOINT [ "mount-fs" ]
