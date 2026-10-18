https://docs.sirius.menu/rayfield
https://www.rayfield.gg/
https://developer.sirius.menu/

[![rayfield](https://user-images.githubusercontent.com/77512805/197843157-3485a6e4-7b18-4372-8277-f3a2e7bd0317.png)](https://sirius.menu/discord)

## Analytics and privacy

When a POMELO UI window opens, POMELO UI sends one event to Sirius's analytics service. It contains:

- a pseudonymous user ID: a SHA-256 hash of your Roblox user ID, which our server re-keys with a key that changes every month, so you can't be followed from one month to the next
- the game (place and universe ID), your executor's name and version, platform (PC, mobile or console) and locale
- about the script: its name, the POMELO UI build and theme, whether it uses a key system, configuration saving or a Discord invite, and the developer's Sirius script ID if they set one
- if you are later kicked or banned from that game, the Roblox error code and whether it was a kick or a ban. Never the message itself.

Cloudflare tells us the country the request came from. Your IP address is not stored, and nothing you type, say or click is ever sent.

### Turning it off

Open the POMELO UI Settings tab in any POMELO UI window and switch off **Usage Analytics (pseudonymous)**. The choice is saved in `POMELO UI/settings.rfld` and applies to every POMELO UI script. While it is off, POMELO UI doesn't download its analytics module at all, and nothing is sent. Turning it off mid-session also stops anything already queued, such as kick reporting.

### For script developers

Set this before loading POMELO UI to turn analytics off for everyone who runs your script:

```lua
getgenv().DISABLE_RAYFIELD_REQUESTS = true
```

It forces the setting off, stops the analytics module being fetched, and skips POMELO UI's occasional uptime ping. POMELO UI still downloads its icon set and prompt module from GitHub.

Remote modules are loaded from a pinned commit (`RAYFIELD_COMMIT` and `SIRIUS_COMMIT` at the top of `source.lua`), not from a branch.

Privacy policy: https://sirius.menu/privacy
