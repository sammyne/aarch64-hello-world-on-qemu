// 对于 virt 类型的 qemu 机器，内存映射的 UART0 的地址为  0x09000000。
volatile unsigned int * const UART0DR = (unsigned int *) 0x09000000;

void print_uart0(const char *s) {
    while(*s != '\0') { /* Loop until end of string */
        *UART0DR = (unsigned int)(*s); /* Transmit char */
        s++; /* Next char */
    }
}

void main() {
    print_uart0("Hello World!\n");
}
