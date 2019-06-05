---
title: A tip on using stack ghc
---

*Some stuff which tripped me up*

--

I use stack ghc while compiling files to ensure sandboxing.

While trying to compile files through ghc with profiling flags I encountered an issue.

The binaries (.o and .hi) compiled without linking to an executable.

That was rather strange.

I tried further changing the file module name to main and it then linked.

--

While using specific modules via stack to play with the libraries, one might chance upon an infuriating issue:
 
Modules not included in snapshot.

As a result, I fumbled around finding a solution.

Using stackage, you can find the latest `lts/nightly` build to fix this, editing the `stack.yaml` file.
