OUTPUT_FORMAT("binary")
ENTRY(_start)

SECTIONS
{
    /*Set the start address to match where the BIOS will load the bootloader*/
    . = 0x7C00;

    .text : {
        _start = .;
        *(.text)
        *(.rodata*)
    }
    
    /*Go 510 bytes from start and add the signature*/
    . = 0x7DFE;
    boot_sig : {
        BYTE(0x55)
        BYTE(0xAA)
    }

    /* Ensure the binary is exactly 512 bytes */
    . = ALIGN(512);
}
