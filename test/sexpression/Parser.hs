{-# LANGUAGE DeriveAnyClass, DeriveGeneric, TypeFamilies, QuasiQuotes
    , DataKinds, ScopedTypeVariables, OverloadedStrings, TypeSynonymInstances
    , FlexibleInstances, UndecidableInstances, TemplateHaskell #-}
module Parser
  ( module Grammar
  , glrParseFast
  ) where
import Language.ANTLR4
import Grammar

import qualified GHC.Types as G
import qualified Text.ANTLR.LR as LR

$(mkLRParser the_ast sexpressionGrammar)

