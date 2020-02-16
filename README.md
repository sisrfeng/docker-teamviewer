docker-teamviewer
=================

[TeamViewer](https://github.com/bbinet/docker-teamviewer): the TeamViewer
docker container.


Build
-----

To create the image `bbinet/teamviewer`, execute the following command in the
`docker-teamviewer` folder:

    docker build -t bbinet/teamviewer .


!!!下面的bbinet要改！
https://blog.csdn.net/Labner/article/details/95602240push

我的改后是
You can now push the new image to the public registry:
    
    docker push goodpen/teamviewer


Run
---

Then, when starting your teamviewer container, you will want to share the X11
socket file as a volume so that the TeamViewer windows can be displayed on your
Xorg server. You may also need to run command `xhost +` on the host.

    $ docker pull bbinet/teamviewer

    $ docker run -it --name teamviewer \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        bbinet/teamviewer
