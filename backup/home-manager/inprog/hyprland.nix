{config, pkgs, ...}:
let
    confPath = /etc/nixos/home-manager/conf/hypr/hyprland.conf;
    mkSymlink = config.lib.file.mkOutOfStoreSymlink;
in
{
    home.file.".config/hypr/hyprland.conf".source = mkSymlink confPath;
    #xdg.configFile.".config/hypr/hyprland.conf".source = mkSymlink confPath;
    
    services.hyprpaper = {
        enable = true;
        settings = {
            preload = "/etc/nixos/home-manager/wallpapers/polyscape_pillars_2.png";
            wallpaper = ",/etc/nixos/home-manager/wallpapers/polyscape_pillars_2.png";
        };
    };


    wayland.windowManager.hyprland = {
        enable = true;
        };
}
