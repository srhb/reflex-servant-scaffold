{ mkDerivation, base, common, stdenv, servant-server }:
mkDerivation {
  pname = "server";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base common servant-server ];
  license = stdenv.lib.licenses.bsd3;
}
