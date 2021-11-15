module OldSchool.Exp where

import Prelude

import Data.Newtype (class Newtype)

-- | An [experience](https://oldschool.runescape.wiki/w/Experience) value.
newtype Exp = Exp Number

derive instance Newtype Exp _

derive newtype instance Eq Exp
derive newtype instance Ord Exp
derive newtype instance Semiring Exp
derive newtype instance Ring Exp

instance Show Exp where
  show (Exp xp) = show xp <> " xp"
