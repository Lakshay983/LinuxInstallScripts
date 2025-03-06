{ config, pkgs, ... }: 

{
  # Set the Home Manager state version
  home.stateVersion = "23.05";

  # Define the username and home directory for Home Manager
  home.username = "lakshaygupta";
  home.homeDirectory = "/home/lakshaygupta";

  # Packages to install
  home.packages = with pkgs; [
    zsh
    git
    vim
    fastfetch  # Existing package for displaying system info
    starship   # Starship prompt package
    tmux
    docker
  ];

  # Enable Zsh as the default shell for your session
  programs.zsh.enable = true;

  # Configure Zsh to initialize Starship and run Fastfetch on startup
  programs.zsh.initExtra = ''
    # Initialize Starship prompt if available
    if command -v starship &>/dev/null; then
      eval "$(starship init zsh)"
    fi

    # Run Fastfetch after starting the shell if available
    if command -v fastfetch &>/dev/null; then
      fastfetch
    fi
  '';

  # Create the Starship configuration file at ~/.config/starship.toml
  home.file.".config/starship.toml".text = ''
    # Starship Configuration

    # Disable the hostname module if you don't want to see it
    [hostname]
    disabled = true

    # Customize the Git branch module (example configuration)
    [git_branch]
    format = "on [$symbol$branch]($style) "

    # Customize the Git status module (using correct format for git_status)
    [git_status]
    format = "($statuses) "  # Use the valid 'statuses' variable

    # Correctly configure the character module
    [character]
    format = "> "

  '';

  # Run install.sh to get the needed dependencies with sudo privileges
  home.activation.installDependencies = pkgs.lib.mkAfter ''
    usr/bin/sudo ${pkgs.bash}/bin/bash /home/lakshaygupta/LinuxInstallScripts/install.sh
  '';
}