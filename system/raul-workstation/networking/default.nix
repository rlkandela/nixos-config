{config, pkgs, lib, ...}:

{
  imports = [
    ./general.nix
    ./network-manager.nix
    ./interfaces.nix
    ./firewall.nix
    ./proxy.nix
  ];
}
