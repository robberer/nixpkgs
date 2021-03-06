{ cabal, ncurses }:

cabal.mkDerivation (self: {
  pname = "terminfo";
  version = "0.4.0.0";
  sha256 = "10y8mhpazcpwwvg1avc0zxq534rwavg82q69l7wm5np24sb5lrv8";
  extraLibraries = [ ncurses ];
  meta = {
    homepage = "https://github.com/judah/terminfo";
    description = "Haskell bindings to the terminfo library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
