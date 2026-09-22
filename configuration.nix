{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./nix/nvf-configuration.nix
    ./hardware-configuration.nix
    ./nix/desktop.nix
    ./nix/packages.nix
    ./nix/services.nix
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  networking.hostName = "Artic";

  time.timeZone = "America/New_York";

  users.users.abin = {
    isNormalUser = true;
    extraGroups = ["wheel" "adbusers"]; #these last 2 are for android studio
    packages = with pkgs; [
      tree
    ];
  };

  system.stateVersion = "26.05";
}
