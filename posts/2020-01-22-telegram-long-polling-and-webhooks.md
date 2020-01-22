---
title: Telegram long polling and webhooks for beginners
---

While trying to update the `telegram-bot crate` for `Rust` to implement the
webhooks functionality I did some readings. Here are my findings:

**Long Polling**

Traditionally clients performed requests to servers and there was no way for
servers to push information to clients.

To circumvent this clients poll servers requesting new info. When servers
respond, and the client receives new info, it immediately sends another request
out to the server.

In the context of telegram bots, the getUpdates method is used to perform polling to the
main telegram servers (not your server instance for the telegram bot). When
there's an update, this sends the response to your server instance and you can
repeat the polling process.

**WebHooks**

The alternative is to use webhooks. We setup a server to handle incoming
updates and set the webhook to use the server route. 
Whenever the main servers receive an update, they push the update to
your server.

Notice that instead of having to poll the main servers repeatedly (long polling), the main
servers perform the push of the update to your server instance once the webhook
is set.

*References*:
https://www.pubnub.com/blog/http-long-polling/
https://core.telegram.org/bots/api
