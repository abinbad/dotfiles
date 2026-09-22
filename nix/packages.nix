{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.firefox.enable = true;
  services.openssh.enable = true;
  services.displayManager.ly.enable = true;

  #these are for android studio for robotics
  nixpkgs.config.android_sdk.accept_license = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    ghostty
    zigfetch
    android-studio # this is for robotics
    android-tools # this is for robotics
    jdk17 # this is for robotics
  ];
}
