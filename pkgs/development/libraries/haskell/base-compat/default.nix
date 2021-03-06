{ cabal, errorcallEqInstance, hspec, QuickCheck, setenv }:

cabal.mkDerivation (self: {
  pname = "base-compat";
  version = "0.5.0";
  sha256 = "1zlpfpfnaqf8rrha19arh882bc560dcw2zwi4j3qrn3lzyh8s1d1";
  buildDepends = [ errorcallEqInstance setenv ];
  testDepends = [ hspec QuickCheck ];
  meta = {
    description = "A compatibility layer for base";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
