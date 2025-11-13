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
  ];

  imports = [
    ./shell.nix
    ./ghostty.nix
    ./hyprland.nix
    ./wofi.nix
    ./waybar/waybar.nix
  ];

 
  home.stateVersion = "25.05";
}
