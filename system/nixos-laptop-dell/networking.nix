# Networking configuration file
{ config, pkgs, lib, ... }:

{
  # Set a warning in case I enable wpa_supplicant and networkmanager at the same time
  #config = lib.mkIf config.networking.networkmanager.enable {
    #warnings = [ "Warning de prueba" ];
  #};


  networking.hostName = "nixos-laptop-dell"; # Define your hostname.
  # NetworkManager configuration
  networking.networkmanager.enable = true;
  users.users.rlkandela.extraGroups = [ "networkmanager" ];

  # We don-t activate wpa_supplicant because we already have networkmanager
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.


  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp2s0.useDHCP = true;
  networking.interfaces.wlp3s0.useDHCP = true;


  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";


  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
