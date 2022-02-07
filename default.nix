{ pkgs
, hpkgs ? pkgs.haskellPackages
, mkDerivation ? hpkgs.mkDerivation
}:
hpkgs.callCabal2nix "tree-diff" ./. { inherit mkDerivation; }
