# eta-misc-test
Various checks and tests of eta and eta-hackage mostly to report issues

Contains branches for some issues reported with eta project.

# This branch is for 
https://github.com/typelead/eta/issues/520

To see the problem start the app (etlas run)

in separate terminal window run:
```
curl http://localhost:9000/foobar/0 & curl http://localhost:9000/foobar/1
```

The app should deadlock.  If first executed commad is
```
curl http://localhost:9000/foobar/0
```
things will work and the above double curl will work.
