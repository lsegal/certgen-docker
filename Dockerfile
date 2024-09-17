FROM alpine AS base
ARG VERSION=v1.3.0
ENV VERSION=${VERSION}
RUN wget -O /certgen https://github.com/minio/certgen/releases/download/${VERSION}/certgen-linux-amd64

FROM scratch
COPY --from=base --chmod=775 /certgen /certgen
WORKDIR /certs
ENTRYPOINT ["/certgen"]
