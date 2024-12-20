{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {

  imports = [];
  nixpkgs = {
    overlays = [];
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home = {
    username = "wilace";
    homeDirectory = "/home/wilace";
    stateVersion = "24.11";
  };

  programs = {
    home-manager.enable = true;
    git.enable = true;

    neovim.enable = true;
  };

  systemd.user.startServices = "sd-switch";
}
