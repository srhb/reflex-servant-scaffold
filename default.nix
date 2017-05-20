{ pkgs ? import <nixpkgs> {}
, reflex-platform ? import ./reflex-platform {}
, ghc             ? reflex-platform.ghc
, ghcjs           ? reflex-platform.ghcjs
}:

let
  server = ghc.callPackage   ./server { compiler = ghc;   };
  client = ghcjs.callPackage ./client { compiler = ghcjs; };
in
  pkgs.writeScriptBin "serve" ''
    #!${pkgs.stdenv.shell}
    ${server}/bin/server ${client}/bin/client.jsexe/
  ''
