{ config, pkgs, ... }:
{

  xdg.configFile =
    let
      mkSymlink = config.lib.file.mkOutOfStoreSymlink;
    in
    {
      "waybar".source = mkSymlink "/etc/nixos/home/conf/waybar/";
      "hypr".source = mkSymlink "/etc/nixos/home/conf/hypr/";
    };

  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

}
