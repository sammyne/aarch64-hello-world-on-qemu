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

成功执行后，样例日志如下

```bash
aarch64-linux-gnu-as -mcpu=cortex-a72 -o startup.o startup.s
aarch64-linux-gnu-gcc -c -o hello_world.o hello_world.c
# Link the two object files to an elf file
aarch64-linux-gnu-ld -T link_script.ld startup.o hello_world.o -o hello_world.elf
qemu-system-aarch64 -M virt -cpu cortex-a72 -nographic -kernel hello_world.elf
Hello World!
```

## 2. 温馨提示
- 这个版本无法引用 libc。如果需要依赖 libc，请使用 v2 目录的的版本。

## 2. 参考文献
- [Lenz-K/arm64-kvm-hello-world](https://github.com/Lenz-K/arm64-kvm-hello-world#1-bare-metal-aarch64-qemu)
