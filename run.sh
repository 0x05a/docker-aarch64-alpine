# boot up with install medium
qemu-system-aarch64 \
-machine virt -cpu cortex-a57 \
-drive if=pflash,format=raw,readonly=on,file="./alpine/QEMU_EFI-pflash.raw" \
-m 512M \
-drive file=/alpine/alpine.qcow2 \
-nographic \
-netdev user,id=net0,hostfwd=tcp::2222-:22,hostfwd=tcp::5000-:5000,hostfwd=tcp::3333-:33333 \
-device virtio-net-device,netdev=net0 \
-fsdev local,path=/alpine/shared,security_model=none,id=shared_dev \
-device virtio-9p-pci,fsdev=shared_dev,mount_tag=shared_mount

#-drive format=raw,readonly=on,file=alpine-standard-3.20.3-aarch64.iso \
