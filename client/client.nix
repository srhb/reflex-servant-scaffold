{ mkDerivation, stdenv, reflex, reflex-dom, common }:
mkDerivation {
  pname = "client";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ reflex reflex-dom common ];
  license = stdenv.lib.licenses.bsd3;
}
