---
title: A tip on using stack ghc
---

I use stack ghc while compiling files to ensure sandboxing.

While trying to compile files through ghc with profiling flags I encountered an issue.

The binaries (.o and .hi) compiled without linking to an executable.

To fix this change the file's module name to main.

This linked to the required executable.

--

While using specific modules via stack to play with the libraries, one might
encounter modules not included in snapshot.

Using stackage, you can find the latest `lts/nightly` build to fix this, editing the `stack.yaml` file.
