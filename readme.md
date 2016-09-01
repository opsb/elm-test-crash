# To replicate

```
$ git clone git@github.com:opsb/elm-test-crash
$ cd elm-test-crash
$ elm-test
```

you should see output similar to

$ elm-test
Success! Compiled 1 module.
Successfully generated /var/folders/1x/1ftzf2l53wxf7bzbvsc9vtp40000gn/T/elm_test_11681-67327-1up0t0g.ga08kyy14i.js


## elm-make scenarios
tests/Tests.elm is different in the following two branches (make-fail/make-success)
See https://github.com/opsb/elm-test-crash/compare/make-fail...make-success for diff
```
$ cd tests

$ git checkout make-fail
$ elm-make Main.elm && grep boom index.html
Success! Compiled 1 module.
Successfully generated index.html

$ git checkout make-success
$ elm-make Main.elm && grep boom index.html
Success! Compiled 2 modules.
Successfully generated index.html
          'boom',
            })('boom'));
```
