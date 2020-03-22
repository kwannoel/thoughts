---
title: Using ghcid on nixos
---

While using nixos, I had an issue with running `ghcid` on my local machine.

It would break as it was unable to find a ghc compiler.

At first in an attempt to hack it into working, I installed ghcid and ghc at the
toplevel in my configuration.nix

However, after thinking carefully, I realized that different projects might have
different ghc versions tagged and hence I shouldn't install these tools system-wide.

Hence removed these installs and created a simple haskell-env.nix file which you can find here:
https://github.com/kwannoel/user-utils/blob/master/haskell-env.nix

which you can run by:

> cd <working-dir>

> nix-shell haskell-env.nix

I then specified the appropriate ghc compiler (Just used the latest one in
nixpkgs) in my stack.yaml.

What this achieves is isolating the tools to each project's ghc version,
avoiding a project dependence on the system's ghc and ghcid.
