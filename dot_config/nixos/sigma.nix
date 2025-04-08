{ config, pkgs, lib, ... }:
{
  #boot.kernelPackages = pkgs.linuxPackages_zen; # needed cuz new gpu driver not in current kernel
  boot.kernelPackages = pkgs.linuxPackages_testing;
  boot = {
    kernelParams = [ "split_lock_detect=off" "amdgpu.ppfeaturemask=0xfffd3fff" ];
  };
  hardware.graphics = {
  enable = true;
  enable32Bit = true;
  };
  #hardware.amdgpu.amdvlk.enable = true;
  #services.desktopManager.plasma6.enable = true;
  networking.nameservers = lib.mkForce [ "192.168.1.3" ];
  system.stateVersion = lib.mkForce "25.05";
  boot.binfmt.emulatedSystems = [ "aarch64-linux" ];
  services.distccd.zeroconf = true;
  environment.systemPackages = [
    pkgs.librespot
  ];

}
