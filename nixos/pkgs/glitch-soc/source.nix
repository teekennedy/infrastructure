# This file was generated by pkgs.mastodon.updateScript.
{ fetchgit, applyPatches }: let
  src = fetchgit {
    url = "https://github.com/glitch-soc/mastodon.git";
    rev = "371563b0e249b6369e04709fb974a8e57413529f";
    sha256 = "19zbndh2scnjpcdfg142p8wc3a31qg8rzakfmk1x9vmf19sf8yf7";
  };
in applyPatches {
  inherit src;
  patches = [];
}
