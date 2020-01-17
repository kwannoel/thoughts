---
title: Linux file paths tripped me once
---

Was trying to run some executables after building via GHC like so: 

> stack exec hello

However, if the above file is not in your `$PATH` you would be unlikely to execute it

Hence we use the relative path to the cwd:

> stack exec ./hello

And this works!
