{
  username,
  config,
  ...
}: {
  # Don't allow mutation of users outside the config.
  users.mutableUsers = false;

  users.groups = {
    "${username}" = {};
    docker = {};
    wireshark = {};
    # for android platform tools's udev rules
    adbusers = {};
    dialout = {};
    # for openocd (embedded system development)
    plugdev = {};
    # misc
    uinput = {};
  };

  users.users."${username}" = {
    # generated by `mkpasswd -m scrypt`
    # we have to use initialHashedPassword here when using tmpfs for /
    initialHashedPassword = "$7$CU..../....KDvTIXqLTXpmCaoUy2yC9.$145eM358b7Q0sRXgEBvxctd5EAuEEdao57LmZjc05D.";
    home = "/home/${username}";
    isNormalUser = true;
    extraGroups = [
      username
      "users"
      "networkmanager"
      "wheel"
      "docker"
      "wireshark"
      "adbusers"
      "libvirtd"
    ];
  };

  # root's ssh key are mainly used for remote deployment
  users.users.root = {
    initialHashedPassword = config.users.users."${username}".initialHashedPassword;
    openssh.authorizedKeys.keys = config.users.users."${username}".openssh.authorizedKeys.keys;
  };
}
