{-# LANGUAGE NoImplicitPrelude #-}

module Lewd (module Lewd, module X) where

import "base" Prelude as X hiding (String, lines, print, putStr, putStrLn, readFile, unlines, unwords, words, writeFile)
import "base" Prelude qualified

import Control.Concurrent as X (forkIO, threadDelay)
import Control.Monad as X
import Control.Monad.IO.Class as X
import Data.List as X (sort, sortOn, zipWith3)
import Data.Ord as X

import Control.Lens as X (both, each, over)
import Data.Sequence as X (Seq (..), (<|), (|>))

import Control.Applicative as X
import Control.Arrow as X
import Data.Default as X
import Data.Foldable as X
import Data.Traversable as X
import Data.Maybe as X
import Control.Exception as X

import Foreign.C as X

import Data.Double.Conversion.Text as X
import Data.FileEmbed as X

-- import Data.Text as X (Text, pack, strip, unpack, )
import Data.Text as X (Text, lines, pack, splitOn, strip, unlines, unpack, unwords, words)
import Data.Text.Encoding as X
import Data.Text.IO as X (putStr, putStrLn, readFile, writeFile)

import Control.Concurrent.Async as X

import System.Directory as Xq
import System.Exit as X
import System.FilePath as X
import System.IO as X (hFlush, stdout)
import System.Random as X

import TextShow as X (showt)

import GHC.Generics as X (Generic)
import Data.Aeson as X (FromJSON, ToJSON)

import Data.HashMap.Strict as X (HashMap)

import System.Random.Shuffle as X

import System.Directory as X


---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------
---------------------------------------------

import Data.Text.Read (decimal, double)

import Network.URI.Encode (encodeText, decodeText)

type String = Text

toInt :: Text -> Maybe Int
toInt (decimal -> Right (i, "")) = Just i
toInt _ = Nothing

toDouble :: Text -> Maybe Double
toDouble (double -> Right (d, "")) = Just d
toDouble _ = Nothing

sleep :: (MonadIO m) => Int -> m ()
sleep = liftIO . threadDelay . (* 1000)

flush :: (MonadIO m) => m ()
flush = liftIO $ hFlush stdout

print :: (MonadIO m, Show a) => a -> m ()
print = liftIO . Prelude.print

uriEncode :: Text -> Text
uriEncode = encodeText

uriDecode :: Text -> Text
uriDecode = decodeText