module Tests exposing (..)

import Test exposing (..)
import Expect
import String


all : Test
all =
    describe "A Test Suite"
        [ test "Addition" <|
            \() ->
                Debug.log "boom" (Debug.crash "boom")
        ]
