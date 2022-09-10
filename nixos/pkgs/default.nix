final: prev: {
  hedgedoc = prev.hedgedoc.overrideAttrs (old: {
    # see https://github.com/NixOS/nixpkgs/issues/176127#issuecomment-1146782555
    preBuild = ''
      export HOME=$TMPDIR
    '';
  });

  discord-canary = prev.discord-canary.override { withOpenASAR = true; };

  catppuccin.cursors = prev.callPackage ./catppuccin/cursors { };

  vmagent = prev.callPackage ./vmagent { };

  v = {
    glitch-soc = prev.callPackage ./glitch-soc { };

    unbound = prev.unbound.override {
      withSystemd = true;
      withDoH = true;
      withDNSCrypt = true;
      withTFO = true;
    };
    gitea-agatheme = prev.callPackage ./gitea-agatheme { };
  };
}
