## 在Docker中编译

1. 进入此目录: `cd builder-in-docker/`
2. 创建镜像: `docker build -t libwrt-builder-ax5_jdc .`
3. 创建和进入容器: `docker run -it --name openwrt-build -v $(pwd)/openwrt-data:/home/build libwrt-builder-ax5_jdc:latest`
4. 
