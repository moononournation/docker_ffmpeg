# build command
#docker build --platform="linux/amd64" -t moononournation/ffmpeg:latest .

# push command
# docker image push moononournation/ffmpeg:latest

# run command
# docker run -it -v /Volumes/docker/convert_media:/convert_media moononournation/ffmpeg:latest

FROM lscr.io/linuxserver/ffmpeg:latest

RUN curl -L https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux -o /usr/local/bin/yt-dlp
RUN chmod a+rx /usr/local/bin/yt-dlp # Make executable

ENTRYPOINT ["/bin/sh"]
