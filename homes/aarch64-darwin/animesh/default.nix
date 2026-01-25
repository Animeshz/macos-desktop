{ ... }: {
  home.stateVersion = "25.11";

  united = {
    cli.nix.pinInputs = true;
    cli.nix.setupComma = true;
  };
}