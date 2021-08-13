# What is twitch-dl

[twitch-dl](https://github.com/ihabunek/twitch-dl) is a command-line tool to download videos from Twitch.tv.

# How to use this image

```
$ docker run --rm --user $UID:$GID -v $PWD:/downloads -t shiifu/twitch-dl \
    download -q <quality> \
    <video_url>
```

* `--user $UID:$GID` is to run as your current user, and not `root`.
* `-v $PWD:/downloads` is to store downloaded files in the current working directory.
* `-q <quality>` is the quality of downloaded video (source, 1080p, 720p, 480p or 360p). Without this option, twitch-dl will ask you to choose the quality.
* `<video_url>` is the ID of a YouTube video or other arguments to pass to `youtube-dl`.

# User Feedback

Having issues? [Report a bug on GitHub](https://github.com/shiifu/docker-twitch-dl/issues).