module Web.Storage.Types where

import Data.Foreign (Foreign, F, unsafeReadTagged)

foreign import data Storage :: Type

readStorage :: Foreign -> F Storage
readStorage = unsafeReadTagged "Storage"
