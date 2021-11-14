module OldSchool.Skill where

import Prelude

-- | A skill.
data Skill
  = Attack
  | Defence
  | Strength
  | Hitpoints
  | Ranged
  | Prayer
  | Magic
  | Cooking
  | Woodcutting
  | Fletching
  | Fishing
  | Firemaking
  | Crafting
  | Smithing
  | Mining
  | Herblore
  | Agility
  | Thieving
  | Slayer
  | Farming
  | Runecraft
  | Hunter
  | Construction

derive instance Eq Skill

instance Show Skill where
  show Attack = "Attack"
  show Defence = "Defence"
  show Strength = "Strength"
  show Hitpoints = "Hitpoints"
  show Ranged = "Ranged"
  show Prayer = "Prayer"
  show Magic = "Magic"
  show Cooking = "Cooking"
  show Woodcutting = "Woodcutting"
  show Fletching = "Fletching"
  show Fishing = "Fishing"
  show Firemaking = "Firemaking"
  show Crafting = "Crafting"
  show Smithing = "Smithing"
  show Mining = "Mining"
  show Herblore = "Herblore"
  show Agility = "Agility"
  show Thieving = "Thieving"
  show Slayer = "Slayer"
  show Farming = "Farming"
  show Runecraft = "Runecraft"
  show Hunter = "Hunter"
  show Construction = "Construction"
