FROM openshift/base-centos7

ENV MINIO_ACCESS_KEY="MINIO_ACCESS_KEY"
ENV MINIO_SECRET_KEY="MINIO_SECRET_KEY"
ENV MINIO_DOWNLOAD_URL="https://dl.minio.io/server/minio/release/linux-amd64/minio"

RUN mkdir -p /minio/bin \
 && echo "curl -sL -o /minio/bin/minio $MINIO_DOWNLOAD_URL" \
 && curl -sL -o /minio/bin/minio $MINIO_DOWNLOAD_URL \
 && chmod +x /minio/bin/minio

VOLUME ["/minio/data", "/minio/config"]

RUN chown 1001:0 -R /minio \
 && chmod -R g+rwX  /minio

EXPOSE 9000

USER 1001

CMD ["/minio/bin/minio", "server", "--config-dir=/minio/config", "/minio/data"]
