{ inputs, pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    just
    kitty
  ];

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false; # annoying
      cleanup = "zap";
    };

    casks = [ "visual-studio-code" ];
  };
}
