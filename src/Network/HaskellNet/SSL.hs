module Network.HaskellNet.SSL
  ( Settings (..)
  , defaultSettingsWithPort
  ) where

import Network.Socket (PortNumber)

data Settings = Settings
              { sslPort                        :: PortNumber
              , sslMaxLineLength               :: Int
              , sslLogToConsole                :: Bool
              , sslDisableCertificateValidation :: Bool
              } deriving(Eq, Ord, Show)

defaultSettingsWithPort :: PortNumber -> Settings
defaultSettingsWithPort p = Settings
  { sslPort = p
  , sslMaxLineLength = 10000
  , sslLogToConsole = False
  , sslDisableCertificateValidation = False
  }
