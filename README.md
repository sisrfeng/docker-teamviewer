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

docker push : 将本地的镜像上传到镜像仓库,要先登陆到镜像仓库

我的改后是
You can now push the new image to the public registry:
    
    docker push goodpen/teamviewer
    
其实不用push到镜像仓库吧


Run
---

Then, when starting your teamviewer container, you will want to share the X11
socket file as a volume so that the TeamViewer windows can be displayed on your
Xorg server. You may also need to run command `xhost +` on the host.

    $ docker pull bbinet/teamviewer

我的改后是(goodpen是我的docker用户名）
    $ docker run -it --name teamviewer \
        -v /tmp/.X11-unix:/tmp/.X11-unix \
        goodpen/teamviewer
