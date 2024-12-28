#![no_std]
#![no_main]

use core::panic::PanicInfo;
use core::arch::asm;

#[no_mangle]
extern "C" fn _start() -> ! {
    unsafe {
        asm!("mov bx, 0x1234", options(nostack, nomem));   
    }

    loop {}
}

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}

