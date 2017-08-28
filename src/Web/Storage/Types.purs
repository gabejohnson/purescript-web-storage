module Web.Storage.Types where

import Control.Monad.Eff (kind Effect)
import Data.Foreign (Foreign, F, unsafeReadTagged)

foreign import data Storage :: Type

foreign import data STORAGE :: Effect

readStorage :: Foreign -> F Storage
readStorage = unsafeReadTagged "Storage"
