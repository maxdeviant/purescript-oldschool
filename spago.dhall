{ name = "oldschool"
, license = "MIT"
, repository = "https://github.com/maxdeviant/purescript-oldschool"
, dependencies =
  [ "aff"
  , "arrays"
  , "effect"
  , "foldable-traversable"
  , "integers"
  , "math"
  , "newtype"
  , "prelude"
  , "psci-support"
  , "spec"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
