{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ntfs3g
  ];

  time.hardwareClockInLocalTime = true;
}


