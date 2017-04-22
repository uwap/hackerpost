{ mkDerivation, aeson, base, lens, protolude, servant-lucid
, servant-server, stdenv, warp
}:
mkDerivation {
  pname = "hackerpost-de";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson base lens protolude servant-lucid servant-server warp
  ];
  license = stdenv.lib.licenses.bsd3;
}
