FROM postgres

ADD run /backup/run
WORKDIR /backup

RUN \
  apt-get update && \
  apt-get install -y python-pip && \
  pip install awscli && \
  rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["./run"]
