{ config, pkgs, ... }:

{
  home.username = "abin";
  home.homeDirectory = "/home/abin";
  
  programs.git = {
    enable = true;
    userName = "abin:";
    userEmail = "abin@abin.com";
    extraConfig = {
      init.defaultBrnch = "main";
    };
  };

  home.stateVersion = "26.05";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo hashtag fried";
    };
  };
}
