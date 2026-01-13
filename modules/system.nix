{ inputs, pkgs, ... }: {
  # sudo with fingerprint (touchID)
  security.pam.services.sudo_local.touchIdAuth = true;
}
