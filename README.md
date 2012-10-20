Seths’s dotfiles
================
*Disclaimer:* These are my customization of a fork of [[mathiasbynes/dotfiles]].

Installation
------------
*Warning:* This will overwrite existing files!

```bash
curl -#L https://github.com/sethvargo/dotfiles/tarball/master | tar -xzv --strip-components 1 --exclude={README.md}
```

You can run that command to update when needed.

Sensible OS X defaults
--------------------------
When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./scipt/mac
```

Install RVM/Ruby
----------------
When setting up a new Mac, you probably want to install Ruby because it's awesome.

```bash
./script/ruby
```

Install Homebrew formulae
-------------------------
When setting up a new Mac, you may want to install some common Homebrew formulae (after installing Homebrew, of course):

```bash
./script/brew
```
