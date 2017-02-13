{ mkDerivation, aeson, base, lens, stdenv }:
mkDerivation {
  pname = "hackerpost-de";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ aeson base lens ];
  license = stdenv.lib.licenses.bsd3;
}
