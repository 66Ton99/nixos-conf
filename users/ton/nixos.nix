{ pkgs, inputs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
#  environment.pathsToLink = [ "/share/fish" ];

  # Add ~/.local/bin to PATH
  environment.localBinInPath = true;

  # Since we're using fish as our shell
#  programs.fish.enable = true;

  users.users.ton = {
    isNormalUser = true;
    home = "/home/ton";
    extraGroups = [ "docker" "lxd" "wheel" ];
    shell = pkgs.zsh;
    hashedPassword = "$6$p5nPhz3G6k$6yCK0m3Oglcj4ZkUXwbjrG403LBZkfNwlhgrQAqOospGJXJZ27dI84CbIYBNsTgsoH650C1EBsbCKesSVPSpB1";
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGbTIKIPtrymhvtTvqbU07/e7gyFJqNS4S0xlfrZLOaY mitchellh"
    ];
  };
}
