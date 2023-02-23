# aarch64-hello-world-on-qemu

基于 QEMU 运行一个 AARCH64（又名 ARM64）架构的示例程序。

## 1. 快速开始

### 1.1. 容器化运行环境

```bash
cd docker
bash dockerize.sh
cd -
```

### 1.2. 启动容器

```bash
bash play.sh
```

> 后续步骤在容器内执行。

### 1.3. 打包程序并部署至 QEMU 运行

```bash
make check
```

## 2. 参考文献
- [Lenz-K/arm64-kvm-hello-world](https://github.com/Lenz-K/arm64-kvm-hello-world#1-bare-metal-aarch64-qemu)
