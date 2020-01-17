---
title: Concurrency in Haskell
---

NOTE: You may reference Control.Currency for a more up to date insight.

In this post I am exploring something called forkIO. Here is the context:

We are creating a simple backend server. This server has a `SQLite` db instance hosted.

What we like to do here is host the server, doing two things:
- Listening for queries via `finger`,
- Allowing updates & injections of user data to the `db` instance

As a result we would need to fork the main process, to allow us to continue listening(first process) while we inject the user data into the db (second process).

---

*Do let me know if I get any of this wrong :P*

Material referenced: http://www.haskell.org/ghc/docs/papers/concurrent-haskell.ps.gz

---

Takeaways:
- impractical to do IO with side-effecting functions:
  - sub-expr eval is context specific due to `non-strictness` of haskell
- MutVars are references to a mutable location in the state
- state-transformer semantics for I/O are unsatisfactory because we do not want the side-effects to be updated simultaneously but rather incrementally
- Concurrent Haskell introduces:
  - processes && process init
  - atomically mutable state: Support inter process comms && coop
- concurrency is non-deterministic,
- we may have 2 processes writing to the file, of which the outcome is unknown
- forkIO requires inter-process syncing: Evaluation of thunks can be synced
