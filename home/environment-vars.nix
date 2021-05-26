{config, pkgs, lib, ...}:

{
  # Here we set the environment variables
  # We must make sure that our shell sources
  # $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
  # in its configuration file, otherwise
  # they will not be defined
  home.sessionVariables = {
    XDG_CONFIG_HOME = "/home/rlkandela/.config";
    EDITOR = "nvim";
  };
}
