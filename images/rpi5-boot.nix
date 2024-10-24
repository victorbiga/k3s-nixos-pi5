{ pkgs, lib, ... }: {
  # bcm2711 for rpi 3, 3+, 4, zero 2 w
  # bcm2712 for rpi 5
  # See the docs at:
  # https://www.raspberrypi.com/documentation/computers/linux_kernel.html#native-build-configuration
  raspberry-pi-nix.board = "bcm2712";

  networking = {
    hostName = "kube-node-5";
    useDHCP = false;
    defaultGateway = "10.0.0.1";
    nameservers = [ "10.0.0.1" ];
    interfaces.eth0.ipv4.addresses = [{
      address = "10.0.0.25";
      prefixLength = 24;
    }];
  };

  hardware = {
    bluetooth.enable = true;
    raspberry-pi = {
      config = {
        all = {
          base-dt-params = {
            # enable autoprobing of bluetooth driver
            # https://github.com/raspberrypi/linux/blob/c8c99191e1419062ac8b668956d19e788865912a/arch/arm/boot/dts/overlays/README#L222-L224
            krnbt = {
              enable = true;
              value = "on";
            };
          };
        };
      };
    };
  };

  system.stateVersion = "24.05";
}
