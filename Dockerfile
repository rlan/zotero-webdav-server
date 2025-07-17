FROM caddy:2.10.0-builder-alpine AS builder

RUN xcaddy build v2.10.0 \
    --with github.com/mholt/caddy-webdav@latest

FROM caddy:2.10.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
