{ pkgs ? import <nixpkgs> {} }:

import (pkgs.fetchFromGitHub {
  owner = "reflex-frp";
  repo  = "reflex-platform";
  inherit (builtins.fromJSON (builtins.readFile ./reflex-platform.json)) rev sha256;
}) {}
