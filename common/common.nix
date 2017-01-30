{ mkDerivation, base, stdenv, servant }:
mkDerivation {
  pname = "common";
  version = "0.1.0.0";
  src = ./.;
  libraryHaskellDepends = [ servant ];
  license = stdenv.lib.licenses.bsd3;
}
