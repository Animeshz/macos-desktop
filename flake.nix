{
  description = "Nix for macOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-25.11-darwin";
    nix-darwin.url = "github:nix-darwin/nix-darwin/nix-darwin-25.11";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = inputs@{ self, nix-darwin, nixpkgs }:
    let
      configuration = { pkgs, ... }: {
        system.stateVersion = 6;
        nixpkgs.hostPlatform = "aarch64-darwin";

        system.configurationRevision = self.rev or self.dirtyRev or null;
        nix.settings.experimental-features = "nix-command flakes";
      };
    in
    {
      darwinConfigurations."macos" = nix-darwin.lib.darwinSystem {
        modules =
          [ configuration
            ./modules/apps.nix
            ./modules/system.nix
          ];
      };
    };
}
