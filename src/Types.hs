{-# LANGUAGE TemplateHaskell #-}
module Types where

import Protolude
import Lens
import Data.Aeson

data Location = Location { _name         :: Text
                         , _description  :: Text
                         , _lat          :: Double
                         , _lon          :: Double
                         , _id           :: Integer
                         }
''makeFields Location
instance FromJSON Location where
  fromJSON v = Location
                <$> v .: "name"
                <*> v .: "description"
                <*> v .: "lat" <*> v .: "lon"
                <*> v .: "id"
instance ToJSON Location where
  toJSON (Location {..}) = ...

data User = User { _name :: Text }
''makeFields User
instance FromJSON User where
  fromJSON v = User <$> v .: "name"
instance ToJSON User where
  ...

data Delivery = Delivery { _route        :: [Location]
                         , _creator      :: User
                         , _description  :: Text
                         , _id           :: Integer
                         }
''makeFields Delivery
instance FromJSON Delivery where
  fromJSON v = Delivery
                <$> v .: "route"
                <*> v .: "creator"
                <*> v .: "description"
                <*> v .: "id"
instance ToJSON Delivery where
  ...

data Route = Route { _begin :: (DateTime, Location)
                   , _end   :: (DateTime, Location)
                   }
''makeFields Route
instance FromJSON Route where
  fromJSON v = Route <$> v .: "from" <*> v .: "to"
instance ToJSON Route where
  ...
