# This is the rlkandela git config
{config, pkgs, lib, ...}:

{
  home.packages = with pkgs; [
    git
    gitAndTools.gitflow
    git-crypt
  ];

  programs.git = {
    enable = true;
    userName = "rlkandela";
    userEmail = "rlkandela@gmail.com";
  };
}
