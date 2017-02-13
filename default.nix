with import <nixpkgs> {};

haskellPackages.override {
  overrides = self: super: {
    hackerpost-de = self.callPackage ./hackerpost-de.nix {};
  };
}

