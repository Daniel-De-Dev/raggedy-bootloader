SECTIONS {
    . = 0x7c00; /* Bootloader start address */
    .text :
    {
        *(.text)
    }
    .rodata :
    {
        *(.rodata)
    }
    .bss :
    {
        *(.bss)
    }
}

