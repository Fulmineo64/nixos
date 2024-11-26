{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    monophony # YouTube music player
  ];
}
