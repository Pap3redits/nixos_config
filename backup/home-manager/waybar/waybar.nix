{config, pkgs, ...}:{

  xdg.configFile = 
    let
      mkSymlink = config.lib.file.mkOutOfStoreSymlink;
    in
    {
      "waybar".source = mkSymlink "/etc/nixos/home-manager/conf/waybar/";
    };
    

  programs.waybar = {
    enable = true;
    systemd.enable = true;
  };

}
