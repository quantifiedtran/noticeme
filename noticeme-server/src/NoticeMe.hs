{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
module NoticeMe where

import qualified Web.Scotty as S
import           Network.Wai (Application)

{-|
    The \"noticeme\" webapp.
-}
noticeme :: S.ScottyM ()
noticeme =
    S.get "/" $ do
      S.text "notice me, senpai"

noticemeIO :: Int -> IO ()
noticemeIO port = S.scotty port noticeme

noticemeApp :: IO Application
noticemeApp = S.scottyApp noticeme
