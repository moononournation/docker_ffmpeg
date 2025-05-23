# docker-ffmpeg

## Patch from

https://github.com/linuxserver/docker-ffmpeg.git

## Modification

- Download yt-dlp binary
- Set ENTRYPOINT to `/bin/sh`

## Usage

```
docker run -it -v /path_to_your_media:/convert_media moononournation/ffmpeg:latest
```
