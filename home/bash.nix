{config, pkgs, lib, ...}:

{
  # We let home-manager manage our bash configuration
  # And then source the sesion variables created
  # by the user in other file
  programs.bash = {
    enable = true;
    initExtra = ''
      source "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
    '';
  };
}
