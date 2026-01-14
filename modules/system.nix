{ inputs, pkgs, ... }: {
  # sudo with fingerprint (touchID)
  security.pam.services.sudo_local.touchIdAuth = true;

  system.defaults = {
    dock.autohide = true;
    dock.mru-spaces = false;  # don't rearrange based on recent use
    finder.AppleShowAllExtensions = true;
    finder.FXPreferredViewStyle = "clmv";  # column view
    loginwindow.LoginwindowText = "Freedom!";
    screencapture.location = "~/Pictures";
    screensaver.askForPasswordDelay = 0;
  };

  # $ softwareupdate --install-rosetta --agree-to-license
  # $ nix run "nixpkgs#legacyPackages.x86_64-darwin.hello"
  nix.extraOptions = ''
    extra-platforms = x86_64-darwin aarch64-darwin
  '';
}
