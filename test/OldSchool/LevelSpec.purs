module Test.OldSchool.LevelSpec where

import Prelude

import Data.Traversable (for_)
import OldSchool.Exp (Exp(..))
import OldSchool.Level (Level(..))
import OldSchool.Level as Level
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

levelSpec :: Spec Unit
levelSpec = do
  describe "fromExp" do
    for_ xpTable \{ level, xp } -> do
      describe ("given " <> show xp) do
        it ("returns " <> show level) do
          Level.fromExp xp `shouldEqual` level

  describe "toExp" do
    for_ xpTable \{ level, xp } -> do
      describe ("given " <> show level) do
        it ("returns " <> show xp) do
          Level.toExp level `shouldEqual` xp

xpTable :: Array { level :: Level, xp :: Exp }
xpTable =
  [ { level: Level 1, xp: Exp 0.0 }
  , { level: Level 2, xp: Exp 83.0 }
  , { level: Level 3, xp: Exp 174.0 }
  , { level: Level 4, xp: Exp 276.0 }
  , { level: Level 5, xp: Exp 388.0 }
  , { level: Level 6, xp: Exp 512.0 }
  , { level: Level 7, xp: Exp 650.0 }
  , { level: Level 8, xp: Exp 801.0 }
  , { level: Level 9, xp: Exp 969.0 }
  , { level: Level 10, xp: Exp 1_154.0 }
  , { level: Level 11, xp: Exp 1_358.0 }
  , { level: Level 12, xp: Exp 1_584.0 }
  , { level: Level 13, xp: Exp 1_833.0 }
  , { level: Level 14, xp: Exp 2_107.0 }
  , { level: Level 15, xp: Exp 2_411.0 }
  , { level: Level 16, xp: Exp 2_746.0 }
  , { level: Level 17, xp: Exp 3_115.0 }
  , { level: Level 18, xp: Exp 3_523.0 }
  , { level: Level 19, xp: Exp 3_973.0 }
  , { level: Level 20, xp: Exp 4_470.0 }
  , { level: Level 21, xp: Exp 5_018.0 }
  , { level: Level 22, xp: Exp 5_624.0 }
  , { level: Level 23, xp: Exp 6_291.0 }
  , { level: Level 24, xp: Exp 7_028.0 }
  , { level: Level 25, xp: Exp 7_842.0 }
  , { level: Level 26, xp: Exp 8_740.0 }
  , { level: Level 27, xp: Exp 9_730.0 }
  , { level: Level 28, xp: Exp 10_824.0 }
  , { level: Level 29, xp: Exp 12_031.0 }
  , { level: Level 30, xp: Exp 13_363.0 }
  , { level: Level 31, xp: Exp 14_833.0 }
  , { level: Level 32, xp: Exp 16_456.0 }
  , { level: Level 33, xp: Exp 18_247.0 }
  , { level: Level 34, xp: Exp 20_224.0 }
  , { level: Level 35, xp: Exp 22_406.0 }
  , { level: Level 36, xp: Exp 24_815.0 }
  , { level: Level 37, xp: Exp 27_473.0 }
  , { level: Level 38, xp: Exp 30_408.0 }
  , { level: Level 39, xp: Exp 33_648.0 }
  , { level: Level 40, xp: Exp 37_224.0 }
  , { level: Level 41, xp: Exp 41_171.0 }
  , { level: Level 42, xp: Exp 45_529.0 }
  , { level: Level 43, xp: Exp 50_339.0 }
  , { level: Level 44, xp: Exp 55_649.0 }
  , { level: Level 45, xp: Exp 61_512.0 }
  , { level: Level 46, xp: Exp 67_983.0 }
  , { level: Level 47, xp: Exp 75_127.0 }
  , { level: Level 48, xp: Exp 83_014.0 }
  , { level: Level 49, xp: Exp 91_721.0 }
  , { level: Level 50, xp: Exp 101_333.0 }
  , { level: Level 51, xp: Exp 111_945.0 }
  , { level: Level 52, xp: Exp 123_660.0 }
  , { level: Level 53, xp: Exp 136_594.0 }
  , { level: Level 54, xp: Exp 150_872.0 }
  , { level: Level 55, xp: Exp 166_636.0 }
  , { level: Level 56, xp: Exp 184_040.0 }
  , { level: Level 57, xp: Exp 203_254.0 }
  , { level: Level 58, xp: Exp 224_466.0 }
  , { level: Level 59, xp: Exp 247_886.0 }
  , { level: Level 60, xp: Exp 273_742.0 }
  , { level: Level 61, xp: Exp 302_288.0 }
  , { level: Level 62, xp: Exp 333_804.0 }
  , { level: Level 63, xp: Exp 368_599.0 }
  , { level: Level 64, xp: Exp 407_015.0 }
  , { level: Level 65, xp: Exp 449_428.0 }
  , { level: Level 66, xp: Exp 496_254.0 }
  , { level: Level 67, xp: Exp 547_953.0 }
  , { level: Level 68, xp: Exp 605_032.0 }
  , { level: Level 69, xp: Exp 668_051.0 }
  , { level: Level 70, xp: Exp 737_627.0 }
  , { level: Level 71, xp: Exp 814_445.0 }
  , { level: Level 72, xp: Exp 899_257.0 }
  , { level: Level 73, xp: Exp 992_895.0 }
  , { level: Level 74, xp: Exp 1_096_278.0 }
  , { level: Level 75, xp: Exp 1_210_421.0 }
  , { level: Level 76, xp: Exp 1_336_443.0 }
  , { level: Level 77, xp: Exp 1_475_581.0 }
  , { level: Level 78, xp: Exp 1_629_200.0 }
  , { level: Level 79, xp: Exp 1_798_808.0 }
  , { level: Level 80, xp: Exp 1_986_068.0 }
  , { level: Level 81, xp: Exp 2_192_818.0 }
  , { level: Level 82, xp: Exp 2_421_087.0 }
  , { level: Level 83, xp: Exp 2_673_114.0 }
  , { level: Level 84, xp: Exp 2_951_373.0 }
  , { level: Level 85, xp: Exp 3_258_594.0 }
  , { level: Level 86, xp: Exp 3_597_792.0 }
  , { level: Level 87, xp: Exp 3_972_294.0 }
  , { level: Level 88, xp: Exp 4_385_776.0 }
  , { level: Level 89, xp: Exp 4_842_295.0 }
  , { level: Level 90, xp: Exp 5_346_332.0 }
  , { level: Level 91, xp: Exp 5_902_831.0 }
  , { level: Level 92, xp: Exp 6_517_253.0 }
  , { level: Level 93, xp: Exp 7_195_629.0 }
  , { level: Level 94, xp: Exp 7_944_614.0 }
  , { level: Level 95, xp: Exp 8_771_558.0 }
  , { level: Level 96, xp: Exp 9_684_577.0 }
  , { level: Level 97, xp: Exp 10_692_629.0 }
  , { level: Level 98, xp: Exp 11_805_606.0 }
  , { level: Level 99, xp: Exp 13_034_431.0 }
  ]
