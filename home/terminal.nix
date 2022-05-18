{ pkgs }:

{
  programs.kitty = {
    enable = true;
    theme = "Tokyo Night Storm";
    settings = {
      background_opacity = 0.85;
      italic_font = "auto";
      bold_font = "auto";
      bold_italic_font = "auto";
    };
    font = {
      package = pkgs.nerdfonts.override.fonts [ "Meslo" ];
      name = "Meslo LG M Regular Nerd Font Complete Mono";
      size = 12;
    };
  };
}
