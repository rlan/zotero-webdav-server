FROM caddy:2.11.7-builder-alpine AS builder

RUN xcaddy build v2.11.7 \
    --with github.com/mholt/caddy-webdav@latest

FROM caddy:2.11.7-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
