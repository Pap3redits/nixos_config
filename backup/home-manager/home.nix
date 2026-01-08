{ config, pkgs, ...}:

{
  
  home.username = "christian";
  home.homeDirectory = "/home/christian";

  home.packages = with pkgs; [
    ripgrep
	  kitty
	  eza
	  fzf
	  bat
	  git
	  gcc
	  lazygit
	  fd
	  nerd-fonts.iosevka
    fastfetch
    firefox
    btop
    protonplus
    inxi
    pipewire
    wireplumber
    zoxide
    mpv
    hyprshot
    kdePackages.filelight
    wgnord
    ticktick
    go
    yazi
    marktext
    discord
    wireguard-tools
    psmisc
    stremio
    teams-for-linux
    google-chrome

  ];

  imports = [
    ./shell.nix
    ./ghostty.nix
    ./hyprland.nix
    #./inprog/hyprland.nix
    ./wofi.nix
    ./waybar/waybar.nix
    ./zoxide.nix
  ];

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };
 
  home.stateVersion = "25.05";
}
