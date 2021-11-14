{ name = "oldschool"
, dependencies =
  [ "arrays"
  , "console"
  , "effect"
  , "foldable-traversable"
  , "integers"
  , "math"
  , "newtype"
  , "prelude"
  , "psci-support"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
