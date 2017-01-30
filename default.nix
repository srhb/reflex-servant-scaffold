{ reflex-platform ? import ./reflex-platform {}
, pkgs            ? import <nixpkgs>         {}
, ghc             ? pkgs.haskell.packages.ghc801
, ghcjs           ? reflex-platform.ghcjs        }:

let
  server = ghc.callPackage   ./server { inherit ghc;   };
  client = ghcjs.callPackage ./client { inherit ghcjs; };
in
  pkgs.writeScriptBin "serve" ''
    #!${pkgs.stdenv.shell}
    ${server}/bin/server ${client}/bin/client.jsexe/
  ''
