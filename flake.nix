{
  description = "rlkandela's NixOS System Configuration";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-20.09"; 					# Input from official channel of nixpkgs
    home-manager.url = "github:nix-community/home-manager/release-20.09"; 	# Input from github of home-manager
    # Set the nixpkgs channel to follow the previously mentioned nixpkgs
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, home-manager, ... }: 
  let

    system = "x86_64-linux";

    pkgs = import nixpkgs {
      inherit system;
      config = {
        allowUnfree = true;
      };
    };

    lib = nixpkgs.lib;

  in {

    homeConfigurations = {
      rlkandela = home-manager.lib.homeManagerConfiguration {
        inherit system pkgs;
	      username = "rlkandela";
	      homeDirectory = "/home/rlkandela";
	      configuration = {
	        imports = [
	          ./home/home.nix
	        ];
	      };
      };
    };

    nixosConfigurations = {
      raul-workstation = lib.nixosSystem {
        inherit system;

	      modules = [
	        ./system/raul-workstation/configuration.nix
	      ];
      };

      nixos-laptop-dell = lib.nixosSystem {
        inherit system;

        modules = [
          ./system/nixos-laptop-dell/configuration.nix
        ];
      };
    };

  };
}
