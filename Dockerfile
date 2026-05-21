# build command
#docker build --platform="linux/amd64" -t moononournation/ffmpeg:latest .

# push command
# docker tag moononournation/ffmpeg:latest moononournation/ffmpeg:8-alpine


# push command
# docker image push moononournation/ffmpeg:latest
# docker image push moononournation/ffmpeg:8-alpine

# run command
# docker run -it -v /Volumes/docker/convert_media:/convert_media moononournation/ffmpeg:latest

# FROM lscr.io/linuxserver/ffmpeg:latest
FROM docker.io/jrottenberg/ffmpeg:8-alpine

RUN apk --no-cache add curl
RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp # Make executable

ENTRYPOINT ["/bin/sh"]
