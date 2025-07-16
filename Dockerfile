FROM n8nio/n8n

USER root
RUN apk add --no-cache ffmpeg python3 py3-pip py3-virtualenv && python3 -m venv /opt/ytvenv && /opt/ytvenv/bin/pip install --no-cache-dir yt-dlp && ln -s /opt/ytvenv/bin/yt-dlp /usr/local/bin/yt-dlp
ENV PATH=/opt/ytvenv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin
USER node
