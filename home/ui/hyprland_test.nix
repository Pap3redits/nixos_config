{ config, pkgs, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
  };

  home.file.".config/hypr".source = ../conf/hypr;
  environment.systemPackages = with pkgs; [
    hyprpaper
  ];
  programs.hyprlock.enable = true;

}
