{ inputs, pkgs, ... }: {
  # sudo with fingerprint (touchID)
  security.pam.services.sudo_local.touchIdAuth = true;

  system.defaults = {
    dock.autohide = true;
    finder.AppleShowAllExtensions = true;
    loginwindow.LoginwindowText = "Freedom!";
    screencapture.location = "~/Pictures";
    screensaver.askForPasswordDelay = 0;
  };

  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false; # annoying
      cleanup = "zap";
    };

    casks = [ "visual-studio-code" ];
  };
}
