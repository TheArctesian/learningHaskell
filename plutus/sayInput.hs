import Data.Text qualified as T
import Playground.Contract
import Plutus.Contract
import PlutusTx.Prelude
import Prelude qualified as Haskell

type Schema =
        Endpoint "sayInput" Haskell.String

contract :: AsContractError e => Contract () Schema e ()
contract = selectList [sayInput]

-- | The "sayInput" contract endpoint.
sayInput :: AsContractError e => Promise () Schema e ()
sayInput = endpoint @"sayInput" $ \inputValue -> do
    logInfo @Haskell.String $ inputValue

endpoints :: AsContractError e => Contract () Schema e ()
endpoints = contract

mkSchemaDefinitions ''Schema

$(mkKnownCurrencies [])
