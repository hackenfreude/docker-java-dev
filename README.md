## What Is This?
This is a Docker image with Java 8. It extends [this](https://github.com/hackenfreude/docker-devenv). It may be used underneath other images for Java-related languages.

## What Do I Need To Know?
* `$ docker run --rm -it hackenfreude/java-dev:latest` will run this.
* `-e GITNAME='<your name>'` and `-e GITMAIL='<your email>'` will update .gitconfig appropriately.
* `-v $PWD:<path>` will volume mount your working directory so you can write code from within the container.

## Gratitude!
I was haunted by ``update-alternatives: error: error creating symbolic link '/usr/share/man/man1/rmid.1.gz.dpkg-tmp': No such file or directory`` while trying to install Java. Thanks to [DuckDuckGo](https://duckduckgo.com), I found Lee Marshall's [bizarrefish.org.uk article](http://bizarrefish.org.uk/building-kura-3/) where he solved the same problem. Thank you for blogging, Lee!
