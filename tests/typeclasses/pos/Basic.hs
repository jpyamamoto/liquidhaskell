{-@ LIQUID "--typeclass" @-}
{-@ LIQUID "--reflection" @-}
module Basic where

class MyEq a where
    {-@ eq :: a -> a -> Bool @-}
    eq :: a -> a -> Bool

class MyEq a => VEq a where
    {-@ lawRefl :: v:a -> {eq v v == true} @-}
    lawRefl :: a -> ()
