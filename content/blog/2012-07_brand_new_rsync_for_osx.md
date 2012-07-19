---
created_at: 2012-07-13 
kind: article
publish: true
title: "Brand, new rsync for OSX"
---

[rsync](http://rsync.samba.org/) that comes with OSX Lion is pretty outdated. 
The easiest way to upgrade it is to use [Homebrew](http://mxcl.github.com/homebrew/) package manager. As rsync is a 
duplication of the software that comes with OSX, the formula is situated in a separate 
repository, accessible via `brew tap`.

To install a brand, new rsync version:

```
brew tap homebrew/dupes
brew install rsync
```

Voilà!
