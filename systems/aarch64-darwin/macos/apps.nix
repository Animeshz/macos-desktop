{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    just
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false; # annoying
      cleanup = "zap";
    };

    casks = [ "visual-studio-code" "iina" ];
  };
}
