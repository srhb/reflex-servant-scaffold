{ pkgs            ? import <nixpkgs> {}
, reflex-platform ? import ../reflex-platform.nix { inherit pkgs; }
, compiler        ? reflex-platform.ghc
}:
let
  common = compiler.callPackage ./common.nix { };
in
  if pkgs.lib.inNixShell then common.env else common
