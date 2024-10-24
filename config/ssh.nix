{ pkgs, lib, ...}:
{
  # Users configuration
  users = {
    defaultUserShell = pkgs.zsh;

    # Victor user
    users.victor = {
      hashedPassword = "$6$1x45qQgJwmCXXhbh$RQrnocus1l1NbKMbL17/9HyQ8RBarb.W33JBAQMjXZWBSs0YGsJBGljzHDJGMrs0KRp7gjiE8rgKbJfbYZlS50";
      isNormalUser = true;
      extraGroups = [ "wheel" ];
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBq97CF4uE2oCUpEG4XNvwyGh8JUZnoNTHLTxnp6ZyDZyYs/sKqbmV9yCVXE4FGgWodVSZMDXN+Gi8x6wXt8D9E3AMCXecD1oGEwneYKaEb1FmOn9TySUpdo5nC4RATbEEbVWBtjPLuqm9LssHtzvw7i61AvrQpzgYjRPKrwakPHhtGFKZc9PjbGe0NmH0z4JDOEUvfzcK8uZkTPjvaSSF5zVtpa/1mMs2QApwZBmmSusJNmDgftZl5y/FInPUwnzs+5NPJCNwzywFKkrDYWuIHfygMDpuIcKPuyAOE3MOBmpw5V5JVmRQ/YaDUV1xhKrsn70WPsN3sSCNiaqe9UVdzv2uMZ34wweWJrWhBB0rZAXXhm7X1JsK+s5QdAYGAkiLAm5fJu5tv7vSWmdaQwhl/4FjebzE80+nLNn00zQmTSeMjEA29+4GN+QtunclshFWarc/Uwi12e1zGsHgv1T/UXI7aIXOgr5Q+LFVmyKIn7+9wh85MmZA3X25w19l+Zc= victor@Victors-MacBook-Pro.local"
      ];
    };

    # Root user
    users.root = {
      hashedPassword = "$6$1x45qQgJwmCXXhbh$RQrnocus1l1NbKMbL17/9HyQ8RBarb.W33JBAQMjXZWBSs0YGsJBGljzHDJGMrs0KRp7gjiE8rgKbJfbYZlS50";
      openssh.authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDBq97CF4uE2oCUpEG4XNvwyGh8JUZnoNTHLTxnp6ZyDZyYs/sKqbmV9yCVXE4FGgWodVSZMDXN+Gi8x6wXt8D9E3AMCXecD1oGEwneYKaEb1FmOn9TySUpdo5nC4RATbEEbVWBtjPLuqm9LssHtzvw7i61AvrQpzgYjRPKrwakPHhtGFKZc9PjbGe0NmH0z4JDOEUvfzcK8uZkTPjvaSSF5zVtpa/1mMs2QApwZBmmSusJNmDgftZl5y/FInPUwnzs+5NPJCNwzywFKkrDYWuIHfygMDpuIcKPuyAOE3MOBmpw5V5JVmRQ/YaDUV1xhKrsn70WPsN3sSCNiaqe9UVdzv2uMZ34wweWJrWhBB0rZAXXhm7X1JsK+s5QdAYGAkiLAm5fJu5tv7vSWmdaQwhl/4FjebzE80+nLNn00zQmTSeMjEA29+4GN+QtunclshFWarc/Uwi12e1zGsHgv1T/UXI7aIXOgr5Q+LFVmyKIn7+9wh85MmZA3X25w19l+Zc= victor@Victors-MacBook-Pro.local"
      ];
    };
  };

  services.sshd.enable = true;

  # Security
  security.sudo.wheelNeedsPassword = false;
}
