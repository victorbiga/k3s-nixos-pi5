{ pkgs, lib, ... }: {

  # Set time
  time.timeZone = "Europe/London";

  # Enable flakes
  nix = {
    package = pkgs.nix;
    extraOptions = ''
      experimental-features = nix-command flakes
   '';

    settings.sandbox = true;
  };

  # Must have packages
  environment.systemPackages = with pkgs; [ git htop dig wget curl which libraspberrypi fzf ];

  # Programs configuration
  programs = {
    zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      ohMyZsh = {
        enable = true;
        plugins = [ "fzf" ];
      };
    };
    neovim = {
      defaultEditor = true;
      enable = true;
      vimAlias = true;
      viAlias = true;
    };
  };
}
