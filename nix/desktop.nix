{ config, lib, pkgs, ... }:

{

  services.xserver.desktopManager.xfce.enable = true;

  environment.xfce.excludePackages = with pkgs; [
     catfish
                #exo
     garcon
     gigolo
                # libxfce4ui
                # libxfce4util
                # libxfce4windowing
     mousepad
     orage
     parole
     ristretto
     xfburn
     xfconf
     xfdashboard
     xfmpc
     xfwm4-themes
     xfce4-terminal
 #   battery-plugin
     xfce4-clipman-plugin
 #   cpufreq-plugin
 #   cpugraph-plugin
     xfce4-dockbarx-plugin
 #   docklike-plugin
 #   eyes-plugin
     xfce4-fsguard-plugin
 #   genmon-plugin
     xfce4-i3-workspaces-plugin
     xfce4-mailwatch-plugin
     xfce4-mpc-plugin
     xfce4-netload-plugin
     xfce4-notes-plugin
     xfce4-systemload-plugin
     xfce4-time-out-plugin
     xfce4-timer-plugin
 #   verve-plugin
     xfce4-weather-plugin
 #   whiskermenu-plugin
     #xfce4-windowwck-plugin
                #xfce4-xkb-plugin
  ];
}
