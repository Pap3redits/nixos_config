{ config, pkgs, ... }:

{

  home.username = "christian";
  home.homeDirectory = "/home/christian";

  home.packages = with pkgs; [
    ripgrep
    kitty
    eza
    fzf
    bat
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
    teams-for-linux
    google-chrome
    networkmanagerapplet
    lutris
    dxvk
    vkd3d
    vulkan-tools
    obsidian
    appimage-run
    wine
    winetricks
    protontricks
    pavucontrol
    steam
    tailscale
    zed-editor
    nix-ld
    nil
    nixd
    hyprnotify
    libnotify
  ];

  #programs.doom-emacs = {
  #  enable = true;
  #  doomDir = inputs.doom-config;
  #};

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Christian Schmidt";
        email = "pap3redits@gmail.com";
      };
    };
  };

  imports = [
    ./terminal/shell.nix
    ./terminal/ghostty.nix
    ./terminal/zoxide.nix
    #./ui/hyprland.nix
    ./ui/hyprland_test.nix
    ./ui/wofi.nix
    ./ui/waybar.nix
    ./cast.nix
  ];

  home.pointerCursor = {
    gtk.enable = true;
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Classic";
    size = 16;
  };

  home.stateVersion = "25.05";
}
