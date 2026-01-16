{ config, pkgs, ... }:
{

  wayland.windowManager.hyprland = {
    enable = true;
  };

  xdg.configFile =
    let
      mkSymlink = config.lib.file.mkOutOfStoreSymlink;
    in
    {
      "hyprland".source = mkSymlink "/etc/nixos/home/conf/hypr/";
    };

  programs.hyprlock.enable = true;

}
