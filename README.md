# Compiling without Docker

```bash
javac HelloWorld.java
java HelloWorld
```


# Compling with Docker

## Interatctively compile with docker

1. fire-up interactive shell

```bash
docker run -it --rm --pid=host java_hello /bin/bash
# within docker shell
./build.sh
./run.sh
```

## Compile inside docker and return results to mounted folder

```bash
# Build Docker container and tag it `java_hello`
docker build -t java_hello .

# Build inside docker
docker run -it -v "$PWD":/usr/src/app -w /usr/src/app java_hello javac HelloWorld.java

# Run inside docker
docker run -it -v "$PWD":/usr/src/app -w /usr/src/app java_hello java HelloWorld
```