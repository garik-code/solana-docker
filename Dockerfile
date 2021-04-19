FROM ubuntu:latest
ENV PATH="/root/.local/share/solana/install/active_release/bin:${PATH}"

workdir /root
RUN apt-get update -y
RUN apt-get -y update \
  && LC_ALL=C DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
       gnupg \
             ca-certificates \
       openssh-client \
             cron \
             nano \
             curl \
             wget \
       && apt-get clean

CMD tail -f /dev/null
