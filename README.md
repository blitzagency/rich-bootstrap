# Marionette HTML Application Foundation

## Features

* Module Styles
    * SCSS
    * Compass
* Application
    * RequireJS
    * Marionette
    * Backbone
    * Handlebars
    * Underscore
* Unit Testing
    * Jasmine
    * Jasmine jQuery
* Karma

## Requirements

* [Homebrew](http://brew.sh/) **OSX Only**
* [NodeJs](http://nodejs.org/download/)
* [RequireJS](http://requirejs.org/)
* [Compass](http://compass-style.org/)

## Installing NodeJS (OSX)

**Note:** Both the package and **Homebrew** install of **NodeJS** come bundled with **npm**.

Installing **NodeJS** through the standard package install requires root privileges; which may cause permission issues down the line. We recommend you install **NodeJS** through **Homebrew**:

```sh
# If you've previously (or have currently) installed node,
# skip this and see next section!
brew update
brew install node
```

**Homebrew** does not require root privileges and installs (typically) into `/usr/local/bin`.

## Uninstall a Node Pkg Install (OSX)

I've you've previously uninstalled **NodeJS** through the package installer; it's important to uninstall the old version before proceeding with a **Homebrew** install.

Follow these steps to remove **NodeJS** from your system:

1. Remove any files / folders named **node**, **node_modules**, **.npm** from:
    - **/usr/local/lib**
    - **/usr/local/include**
    - **/usr/local/bin**
    - **/usr/local/share/man/man1/**
    - **/usr/local/lib/dtrace/**
    - **/Users/USERNAME/**

2. Now correct (probably clobbered) permissions:
    - ```sudo chown -R `whoami` /usr/local/lib/```

After this is complete run:

```sh
brew update
brew doctor
```

Follow any instructions it gives you before proceeding.

Finally:

```sh
brew install node
```

## Install Required Packages

**Note:** Depending on your setup, **sudo** may be required.


```sh
gem install --no-ri --no-rdoc compass
npm install -g requirejs
```

## Testing Requirements:

* Karma
* Jasmine
* RequireJS
* Jasmine-jQuery

Ensure that you have installed karma CLI

```sh
make install
```

Now to run your tests, from the root of your project run:

```sh
karma start
```

## Quick Start Commands

To get started you'll only need to run `make serve` and `make watch`.

```sh
# start a dev server
make serve

# run compass watch
make watch

# build project
make all
```

## Want docs? ok...

```bash
npm install
pip install sphinx sphinx_rtd_theme
make doc
make serve-doc
```
[view local docs](http://localhost:8000/)