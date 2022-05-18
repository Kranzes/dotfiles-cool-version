{
  description = "TheAltF4Stream dotfiles and environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    home-manager = { url = "github:nix-community/home-manager"; inputs.nixpkgs.follows = "nixpkgs"; };
    nur.url = "github:nix-community/NUR";
  };

  outputs = { self, ... }@inputs:
    let
      username = "blackglasses";
    in
    {
      homeConfigurations.${username} = inputs.home-manager.lib.homeManagerConfiguration {
        inherit username;
        homeDirectory = "/home/${username}";
        configuration = import ./home;
        extraSpecialArgs = { inherit inputs self; };
        system = "x86_64-linux";
        stateVersion = "22.05";
      };
    };
}
