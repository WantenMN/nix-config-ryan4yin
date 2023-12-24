{
  modules.desktop.hyprland = {
    nvidia = false;
    # settings = {
    #   monitor = "";
    # };
  };

  modules.desktop.i3 = {
    nvidia = false;
  };

  programs.ssh = {
    enable = true;
    extraConfig = ''
      Host github.com
        Hostname github.com
        # github is controlled by shoukei~
        IdentityFile ~/.ssh/shoukei
        # Specifies that ssh should only use the identity file explicitly configured above
        # required to prevent sending default identity files first.
        IdentitiesOnly yes
    '';
  };
}
