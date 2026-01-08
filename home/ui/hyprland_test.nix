{config, pkgs, ...}:
let
    confPath = "/home/christian/nixconfig/home/conf/hypr";
    mkSymlink = config.lib.file.mkOutOfStoreSymlink;
in
{
    #home.file.".config/hypr".source = mkSymlink confPath;
    xdg.configFile."hypr".source = mkSymlink confPath;

        #home.file.".config/hypr" = {
        #source = config.lib.file.mkOutOfStoreSymlink confPath;
        #recursive = true;
    #};


    services.hyprpaper = {
        enable = true;
        settings = {
            preload = "/etc/nixos/assets/wallpapers/polyscape_pillars_2.png";
            wallpaper = ",/etc/nixos/assets/wallpapers/polyscape_pillars_2.png";
        };
    };


    wayland.windowManager.hyprland = {
        enable = true;
        };
    programs.hyprlock.enable = true;
}
