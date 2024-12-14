#![no_std]
#![no_main]

fn main() {
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
