{vars_networking, ...}:
#############################################################
#
#  Ruby - a NixOS VM running on Proxmox
#
#############################################################
let
  hostName = "ruby"; # Define your hostname.
  hostAddress = vars_networking.hostAddress.${hostName};
in {
  imports = [
    ./restic.nix
  ];

  # Enable binfmt emulation of aarch64-linux, this is required for cross compilation.
  boot.binfmt.emulatedSystems = ["aarch64-linux" "riscv64-linux"];
  # supported file systems, so we can mount any removable disks with these filesystems
  boot.supportedFilesystems = [
    "ext4"
    "btrfs"
    "xfs"
    #"zfs"
    "ntfs"
    "fat"
    "vfat"
    "exfat"
    "cifs" # mount windows share
  ];

  boot.kernelModules = ["kvm-amd" "kvm-intel"];
  boot.extraModprobeConfig = "options kvm_amd nested=1"; # for amd cpu

  networking = {
    inherit hostName;
    inherit (vars_networking) defaultGateway nameservers;

    networkmanager.enable = false;
    interfaces.ens18 = {
      useDHCP = false;
      ipv4.addresses = [hostAddress];
    };
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "23.11"; # Did you read the comment?
}
