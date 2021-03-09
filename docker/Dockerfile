FROM debian:buster-slim AS gitclone
RUN  apt update && \
     apt install -y git && \
     apt clean && \
     git clone git://github.com/enemy-submarine/pidrila.git

FROM python:3.8-slim
COPY --from=gitclone /pidrila .
RUN  pip install -r requirements.txt && \
     groupadd pidrila && \
     useradd -g pidrila pidrila && \
     mkdir /logs && \
     chown pidrila:pidrila /logs
COPY docker-entrypoint.sh .
RUN  chmod +755 docker-entrypoint.sh
USER pidrila
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD  ["--help"]
