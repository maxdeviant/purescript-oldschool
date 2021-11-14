module OldSchool.Level where

import Prelude

import Data.Array ((..))
import Data.Foldable (foldl)
import Data.Newtype (class Newtype)
import Data.Int as Int
import Math as Math
import OldSchool.Exp (Exp(..))

-- | A level in a skill.
newtype Level = Level Int

derive instance Newtype Level _

derive newtype instance Eq Level
derive newtype instance Ord Level

instance showLevel :: Show Level where
  show (Level level) = "Level " <> show level

-- | Returns the level that corresponds to the specified XP value.
fromExp :: Exp -> Level
fromExp xp = go (Level 1)
  where
  go (Level currentLevel) =
    let
      xpForNextLevel = toExp $ Level $ currentLevel + 1
    in
      if xpForNextLevel <= xp then
        go $ Level (currentLevel + 1)
      else
        Level currentLevel

-- | Returns the amount of XP required to reach the specified level.
toExp :: Level -> Exp
toExp (Level 1) = zero
toExp (Level level) =
  1 .. (level - 1)
    # foldl
        ( \acc x ->
            acc
              + Math.floor
                  ( Int.toNumber x + 300.0
                      * Math.pow 2.0 (Int.toNumber x / 7.0)
                  )
        )
        0.0
    # (flip (/) $ 4.0)
    # Math.floor
    # Exp
