# El stub no_std que van a tener todos eventualmente
for dir in initland \
           systemland/kernel \
           systemland/shell \
           systemland/utilities/dir \
           systemland/utilities/create \
           systemland/utilities/delete \
           systemland/utilities/move \
           systemland/utilities/copy \
           systemland/utilities/pwd; do
cat > $dir/src/main.rs << 'EOF'
#![no_std]
#![no_main]

use core::panic::PanicInfo;

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}
EOF
done
