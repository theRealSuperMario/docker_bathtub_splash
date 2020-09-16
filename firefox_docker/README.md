# Run Firefox inside Docker and return window to host


* This is an important to debug x-server fowarding to host machine


1. build docker container

```bash
docker build -t firefox .
```

2. run firefox inside container

```
# for linux
./run_linx.sh

# for macOS. See References for details on macOS
./run_macos.sh
```

# References

* [X11 forwarding for MACOS](https://gist.github.com/cschiewek/246a244ba23da8b9f0e7b11a68bf3285)
* [Original blog post by Fabio Rehm on X11 forwarding with docker](http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker/)