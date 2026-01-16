{ config, pkgs, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
  };
  home.file.".config/hypr".source = ../conf/hypr;
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = "/etc/nixos/assets/wallpapers/polyscape_pillars_2.png";
      wallpaper = ",/etc/nixos/assets/wallpapers/polyscape_pillars_2.png";
    };
  };

  programs.hyprlock.enable = true;

}
