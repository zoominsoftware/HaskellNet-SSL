module Network.HaskellNet.SSL
  ( Settings (..)
  , defaultSettingsWithPort
  ) where

#if defined(NETWORKLESS03)
import Network.Socket.Internal (PortNumber)
#else
import Network.Socket (PortNumber)
#endif


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
