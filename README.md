## TL;DR:

``
./update-platform
nix-build default.nix
./result/bin/serve
``

Visit http://localhost:8080/static/index.html in your browser.

## Slightly longer version

This is a *very* barebones scaffold designed to help understanding how a
servant/reflex project might be structured using Nix and
[reflex-platform](https://github.com/reflex-frp/reflex-platform) using minimal
magic.

You should start by running `./update-platform` to get an up-to-date checkout
of reflex-platform. If you haven't used `try-reflex` directly before (which I
recommend,) you may also want to read the
[notes](https://github.com/reflex-frp/reflex-platform#os-compatibility) on
binary caches, to avoid having to build everything yourself.

Afterwards, you can build the entire project with `nix-build default.nix` and
explore the result symlink. You can also build subprojects individually. Have a
go at it!
