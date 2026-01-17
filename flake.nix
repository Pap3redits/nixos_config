{
  description = "A simple NixOS flake";

  inputs = {

    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";

    #nix-doom-emacs-unstraightened.url = "github:marienz/nix-doom-emacs-unstraightened";

    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{
      nix-flatpak,
      nixpkgs,
      home-manager,
      ...
    }:
    {

      nixosConfigurations = {
        nixos-thinkpad = nixpkgs.lib.nixosSystem {
          modules = [
            #./configuration.nix
            ./hosts/nixos-thinkpad
            home-manager.nixosModules.home-manager
            {
              home-manager.useGlobalPkgs = true;
              home-manager.useUserPackages = true;
              home-manager.users.christian = import ./home;
            }
            nix-flatpak.nixosModules.nix-flatpak
            #  inputs.nix-doom-emacs-unstraightened.homeModule
          ];
        };
      };
    };
}
