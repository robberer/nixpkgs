{ cabal }:

cabal.mkDerivation (self: {
  pname = "bytestring-nums";
  version = "0.3.6";
  sha256 = "1kg777gpqj05h5bj0637yky64bdx7x77hm7nq2rhpw4i1mh9gjmx";
  isLibrary = true;
  isExecutable = true;
  meta = {
    homepage = "http://github.com/solidsnack/bytestring-nums";
    description = "Parse numeric literals from ByteStrings";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
