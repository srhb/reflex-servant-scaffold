{ pkgs ? import <nixpkgs> {}
, reflex-platform ? import ../reflex-platform {}
, compiler ? reflex-platform.ghc
}:
let 
  common = compiler.callPackage ../common/common.nix { };
  client = compiler.callPackage ./client.nix { inherit common; };
in
  if pkgs.lib.inNixShell then client.env else client
