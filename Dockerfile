FROM n8nio/n8n:next

USER root
RUN apk add --no-cache ffmpeg curl
USER node
