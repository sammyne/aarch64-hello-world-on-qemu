FROM busybox:1.36.0 AS repo

WORKDIR /output

ARG VERSION=5.4.32

RUN wget http://mirrors.ustc.edu.cn/kernel.org/linux/kernel/v5.x/linux-$VERSION.tar.xz

RUN tar -Jxvf linux-$VERSION.tar.xz && mv linux-$VERSION linux


FROM sammyne/qemu:7.2.0-aarch64-ubuntu20.04

# bc bison, flex, libssl-dev sees https://www.kernel.org/doc/html/v5.4/process/changes.html
# cpio for packing up apps
RUN apt update                                      &&\
  apt install -y gcc-aarch64-linux-gnu gdb-multiarch  \
    bc bison flex libssl-dev                          \
    cpio                                            &&\
  apt clean                                         &&\
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /linux

COPY --from=repo /output/linux .

RUN make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- defconfig  &&\
  ./scripts/config --set-val CONFIG_BLK_DEV_RAM y               &&\
  make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- -j16
