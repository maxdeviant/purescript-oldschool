module Test.OldSchool.LevelSpec where

import Prelude

import OldSchool.Exp (Exp(..))
import OldSchool.Level (Level(..))
import OldSchool.Level as Level
import Test.Spec (Spec, describe, it)
import Test.Spec.Assertions (shouldEqual)

levelSpec :: Spec Unit
levelSpec = do
  describe "fromExp" do
    describe "given 0 xp" do
      it "returns Level 1" do
        Level.fromExp zero `shouldEqual` (Level 1)
    describe "given 13,034,431 xp" do
      it "returns Level 99" do
        Level.fromExp (Exp 13_034_431.0) `shouldEqual` (Level 99)
