{ cabal, dataDefaultClass, Diff, filepath, HUnit, mtl, parsec
, QuickCheck, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, testingFeat, uniplate, wlPprint
}:

cabal.mkDerivation (self: {
  pname = "language-ecmascript";
  version = "0.16.2";
  sha256 = "15jvq3wblx67hhvgblqzfdnks6x17hfnivifps5wfs9v1ljkiq1k";
  buildDepends = [
    dataDefaultClass Diff mtl parsec QuickCheck testingFeat uniplate
    wlPprint
  ];
  testDepends = [
    dataDefaultClass Diff filepath HUnit mtl parsec QuickCheck
    testFramework testFrameworkHunit testFrameworkQuickcheck2 uniplate
    wlPprint
  ];
  jailbreak = true;
  doCheck = false;
  meta = {
    homepage = "http://github.com/jswebtools/language-ecmascript";
    description = "JavaScript parser and pretty-printer library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
