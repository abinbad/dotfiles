{
  config,
  pkgs,
  ...
}: {
  home.username = "abin";
  home.homeDirectory = "/home/abin";

  programs.git = {
    enable = true;
    userName = "abin:";
    userEmail = "abin@abin.com";
  };

  home.stateVersion = "26.05";
  programs.bash = {
    enable = true;
    shellAliases = {
      btw = "echo hashtag fried";
      z = "zigfetch";
      la = "ls -a";
      q = "exit";
    };
  };
}
