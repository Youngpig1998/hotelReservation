该项目中用的configWriter镜像为youngpig/configwriter:latest

它是被用来作为该benchmark中deployment资源的init container，职责是用来将config.json配置文件通过volume与hotelreservation镜像进行绑定。