# Use the NixOS base image
FROM nixos/nix

# Set the working directory
WORKDIR /sd-image

# Copy necessary files for the build
COPY . .

# Set the entrypoint to build the specified node's SD image
ENTRYPOINT nix --extra-experimental-features nix-command --extra-experimental-features flakes build '.#nixosConfigurations.rpi5-boot.config.system.build.sdImage' && \
  echo "docker cp $HOSTNAME:$(find $(readlink result) -type f -name 'nixos-sd-image*') ."
