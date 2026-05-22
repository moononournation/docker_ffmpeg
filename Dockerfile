# build command
# docker build --platform="linux/amd64" -t moononournation/ffmpeg:8.0.2-ubuntu2404 .

# tag command
# docker tag moononournation/ffmpeg:8.0.2-ubuntu2404 moononournation/ffmpeg:latest

# push command
# docker image push moononournation/ffmpeg:8.0.2-ubuntu2404
# docker image push moononournation/ffmpeg:latest

# run command
# docker run -it -v /Volumes/docker/convert_media:/convert_media moononournation/ffmpeg:latest
# docker run -it moononournation/ffmpeg:latest /bin/sh

# FROM lscr.io/linuxserver/ffmpeg:latest
FROM docker.io/jrottenberg/ffmpeg:8.0.2-ubuntu2404

# RUN apk --no-cache add curl
RUN apt-get -y update; apt-get -y install curl
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl \
    && rm -rf /var/lib/apt/lists/*
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp # Make executable

ENTRYPOINT ["/bin/sh"]
