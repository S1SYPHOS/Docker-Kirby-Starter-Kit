# Docker/Kirby StarterKit
[![Release](https://img.shields.io/github/release/S1SYPHOS/Docker-Kirby-Starter-Kit.svg)](https://github.com/S1SYPHOS/Docker-Kirby-Starter-Kit/releases) [![License](https://img.shields.io/github/license/S1SYPHOS/Docker-Kirby-Starter-Kit.svg)](https://github.com/S1SYPHOS/Docker-Kirby-Starter-Kit/blob/master/LICENSE) [![Issues](https://img.shields.io/github/issues/S1SYPHOS/Docker-Kirby-Starter-Kit.svg)](https://github.com/S1SYPHOS/Docker-Kirby-Starter-Kit/issues)

**You heard about Kirby CMS and want to use it on your next project? You want to harness the power of Docker? Then THIS is for you!**

Here's my personal (thus opinionated) Docker+Kirby boilerplate, starring:
- [Kirby CMS v3](https://getkirby.com) - a file‑based CMS that's 'easy to setup, easy to use & flexible as hell'
- [Docker Compose](https://docs.docker.com/compose/overview) - a tool for defining and running multi-container Docker applications

## Requirements
- Working [Docker environment](https://docs.docker.com/compose/gettingstarted)
- [Composer](https://getcomposer.org)

## Getting started
Download or clone this repository, then install the [Gulp/Kirby StarterKit](https://github.com/S1SYPHOS/Gulp-Kirby-Starter-Kit) (or any other Kirby project):

```text
# Composer
composer create-project s1syphos/gulp-kirby-starter-kit htdocs --no-dev --prefer-dist

# Git
git clone https://github.com/S1SYPHOS/Gulp-Kirby-Starter-Kit.git your-project

# Move docker configuration files
mv docker htdocs/
```

Now just type `docker-compose up` and code away!

## Credits
@rasteiner's [k3-dockercompose-starterkit](https://github.com/rasteiner/k3-dockercompose-starterkit) inspired this boilerplate - he deserves all the credit.

## Special Thanks
I'd like to thank everybody that's making great software - you people are awesome. Also I'm always thankful for feedback and bug reports :)