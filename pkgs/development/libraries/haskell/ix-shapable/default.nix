{ cabal }:

cabal.mkDerivation (self: {
  pname = "ix-shapable";
  version = "0.1.0";
  sha256 = "08ljlzywnw0h8ijwb6yh4r8l6z7bbknwxv9cjq7lkfx7m2vgy1sh";
  meta = {
    description = "Reshape multi-dimensional arrays";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
