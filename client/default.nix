{ reflex-platform ? import ../reflex-platform {}
, ghcjs
, common ? import ../common
}:
let 
  drv = ghcjs.callPackage ./client.nix {
    common = common { compiler = ghcjs; };
  };
in
  if reflex-platform.nixpkgs.pkgs.lib.inNixShell then drv.env else drv
