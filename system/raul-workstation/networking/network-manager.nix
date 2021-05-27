# Networking configuration file
{ config, pkgs, lib, ... }:

{
  # NetworkManager configuration
  networking.networkmanager.enable = true;
  users.users.rlkandela.extraGroups = [ "networkmanager" ];

  # We don-t activate wpa_supplicant because we already have networkmanager
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.
  # Set a warning in case I enable wpa_supplicant and networkmanager at the same time


  #config = lib.mkIf config.networking.networkmanager.enable {
    #warnings = [ "Warning de prueba" ];
  #};
}
