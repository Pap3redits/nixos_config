{ config, pkgs, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
  };

  programs.hyprlock.enable = true;

}
