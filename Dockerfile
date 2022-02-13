FROM python:3.7-alpine

RUN apk --no-cache --update add alpine-sdk bash libstdc++ libc6-compat npm libx11-dev libxkbfile-dev libsecret-dev && \
    npm config set unsafe-perm true && \
    npm install -g code-server

ENTRYPOINT ["code-server", "--auth", "none", "--bind-addr", "0.0.0.0:8080"]
CMD [""]
