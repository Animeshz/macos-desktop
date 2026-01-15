{ inputs, ... }: {
  imports = [
    ./system.nix
    ./apps.nix
  ]; 

  # IMPORTANT: to change in case of different user
  system.primaryUser = "animesh";
  system.stateVersion = 6;
  nix.settings.experimental-features = "nix-command flakes";
}
