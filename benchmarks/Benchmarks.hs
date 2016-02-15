{-# LANGUAGE FlexibleContexts, FlexibleInstances, MultiParamTypeClasses, 
             PolyKinds, RankNTypes, ScopedTypeVariables, TypeFamilies #-}

module Benchmarks 
(Benchmarks.bench
,benchIO
,benchGroup
,hideArgs
,hideSHEArgs
,Bench
,Benchmark
,NFData) where

import Gen
import Harness.SHE
import Utils

import Control.DeepSeq
import Control.Monad.Random
import Control.Monad.State
import Criterion as C

import Data.Proxy

-- wrapper for Criterion's `nf`
bench :: NFData b => (a -> b) -> a -> Bench params
bench f = Bench . nf f

-- wrapper for Criterion's `nfIO`
benchIO :: NFData b => IO b -> Bench params
benchIO = Bench . nfIO

-- wrapper for Criterion's 
benchGroup :: (Monad rnd) => String -> [rnd Benchmark] -> rnd Benchmark
benchGroup str = (bgroup str <$>) . sequence

-- normalizes any function resulting in a Benchmark to 
-- one that takes a proxy for its arguments
hideArgs :: (GenArgs rnd bnch, Monad rnd, ShowType a,
             ResultOf bnch ~ Bench a)
  => bnch -> Proxy a -> rnd Benchmark
hideArgs f p = (C.bench (showType p) . unbench) <$> genArgs f

hideSHEArgs :: forall a rnd bnch . 
  (GenArgs (StateT (Maybe (SKOf a)) rnd) bnch, Monad rnd, ShowType a,
   ResultOf bnch ~ Bench a)
  => bnch -> Proxy a -> rnd Benchmark
hideSHEArgs f p = (C.bench (showType p) . unbench) <$> 
  (evalStateT (genArgs f) (Nothing :: Maybe (SKOf a)))

newtype Bench params = Bench {unbench :: Benchmarkable}

instance (Monad rnd) => GenArgs rnd (Bench params) where
  type ResultOf (Bench params) = Bench params
  genArgs = return
