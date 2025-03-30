FROM debian:bookworm-slim

RUN apt-get update
RUN apt-get install -y \
    sshfs \
    tsocks

COPY scripts/mount-fs /usr/local/bin/mount-fs
COPY scripts/ssh-wrapper /usr/local/bin/ssh-wrapper

ENV PATH="/usr/local/bin:$PATH"

CMD [ "mount-fs" ]
