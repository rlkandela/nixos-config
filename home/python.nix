{config, pkgs, ...}:

{
  home.packages = with pkgs; [
    python38
  ];
}
