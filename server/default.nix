{ pkgs ? import <nixpkgs> {}
, ghc
, common ? import ../common }:
let 
  drv = ghc.callPackage ./server.nix {
    common = common { compiler = ghc; };
  };
in
  if pkgs.lib.inNixShell then drv.env else drv
