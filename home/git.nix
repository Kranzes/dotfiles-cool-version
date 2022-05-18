{ pkgs }:

{
  programs.git = {
    enable = true;
    userName = "Erik Reinert";
    extraConfig = {
      diff.colorMoved = "zebra";
      fetch.prune = true;
      init.defaultBranch = "main";
      pull.rebase = true;
      rebase.autoStash = true;
    };
  };

  programs.gh.enable = true;

  programs.lazy.git.enable = true;
}
