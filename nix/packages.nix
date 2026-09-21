{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.firefox.enable = true;
  services.openssh.enable = true;
  services.displayManager.ly.enable = true;

  environment.systemPackages = with pkgs; [
    neovim
    wget
    git
    ghostty
    zigfetch
  ];
}
