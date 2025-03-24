{ config, pkgs, lib, ... }:
{
  boot.kernelPackages = pkgs.linuxPackages_latest; # needed cuz new gpu driver not in current kernel
}
