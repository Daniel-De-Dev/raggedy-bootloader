
Bochs will be used for development with the `bochsrc.txt` file.

Rust nighly is used

so far iv'e managed such that cargo directly compiles into binary that can be copied to the disk.

running 
`cargo build --release`

then copying using
`dd if=target/x86_64-bootloader/release/raggedy-bootloader of=disk.img conv=notrunc`

and then running
`bochs -f bochsrc.txt`

# Generating the disk

`dd if=/dev/zero of=disk.img bs=512 count=2880`
