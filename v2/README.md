# aarch64-hello-world-on-qemu-v2

## 快速开始

### 1. 容器化环境
```bash
cd docker
bash dockerize.sh
cd -
```

### 2. 启动容器
```bash
bash play.sh
```

> 后续步骤在容器内进行。

### 3. 运行应用
```bash
make check
```

成功执行后，样例日志片段如下

```bash
...
[    0.677331] Key type dns_resolver registered
[    0.678628] registered taskstats version 1
[    0.678828] Loading compiled-in X.509 certificates
[    0.688983] input: gpio-keys as /devices/platform/gpio-keys/input/input0
[    0.692225] rtc-pl031 9010000.pl031: setting system clock to 2023-02-23T11:43:55 UTC (1677152635)
[    0.695929] ALSA device list:
[    0.696078]   No soundcards found.
[    0.701156] uart-pl011 9000000.pl011: no DMA platform data
[    0.725356] Freeing unused kernel memory: 5120K
[    0.726231] Run /init as init process
hello world!
```

## 温馨提示
- 这一版可以使用 libc

## 参考文献
- [使用qemu进行arm64架构linux开发学习](https://zhuanlan.zhihu.com/p/456591830)
