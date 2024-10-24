# k3s-nixos-pi5

## Deploying

Infrastructure can be automatically deployed to devices using [deploy-rs](https://github.com/serokell/deploy-rs).

```
nix run nixpkgs#deploy-rs
```

## Build SD card images for Raspberry PI

docker build -t sd-image-builder-pi5 --platform linux/arm64  .
docker run -it sd-image-builder-pi5
docker cp 7d07b0dfa092:/nix/store/nbm1vy2cf7a762wxzg2d63b62jcx2vng-nixos-sd-image-24.05.20241020.8917291-aarch64-linux.img/sd-image/nixos-sd-image-24.05.20241020.8917291-aarch64-linux.img.zst .
zstd --decompress nixos-sd-image-24.05.20241020.8917291-aarch64-linux.img.zst

Flash to the nvme drive using balena etcher or dd.:

```
sudo dd if=image.img of=/dev/{device} bs=4096 conv=fsync status=progress
```
