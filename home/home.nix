{ config, pkgs, ... }:

{
  imports = [
    # Include the rest of the home-manager config
    ./git.nix
    ./neovim
    ./python.nix
    ./bash.nix
    ./environment-vars.nix
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "rlkandela";
  home.homeDirectory = "/home/rlkandela";

  # Packages to install localy
  home.packages = with pkgs; [
    firefox-wayland
    neofetch
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.03";
}
