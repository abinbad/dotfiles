{
  description = "NixOS from Scratch";

  inputs = {
    
    nixpkgs.url = "nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nvf = {
      url = "github:notashelf/nvf";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    
  };

  outputs = { self, nixpkgs, home-manager, nvf, ... }: {

    nixosConfigurations.Artic = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [

	nvf.nixosModules.default
        ./nix/nvf-configuration.nix

        ./configuration.nix

        home-manager.nixosModules.home-manager
        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;
            users.abin = import ./home.nix;
            backupFileExtension = "backup";
          };
        }
      ];
    };
  };
}
