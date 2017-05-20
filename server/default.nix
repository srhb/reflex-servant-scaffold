{ pkgs ? import <nixpkgs> {}
, reflex-platform ? import ../reflex-platform {}
, compiler        ? reflex-platform.ghc
}:
let 
  common = compiler.callPackage ../common/common.nix { };
  server = compiler.callPackage ./server.nix { inherit common; };
in
  if pkgs.lib.inNixShell then server.env else server
