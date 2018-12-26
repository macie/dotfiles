# dotfiles

A collection of my [configuration files](http://dotfiles.github.io/)

## Usage

### Install dotfiles

This script use [stowsh](https://github.com/williamsmj/stowsh) to install all configuration files located in not hidden directories (without dot).

```shell
$ ./install.sh
 > Update stowsh... (downloaded in 0.383343s)
 > Install packages:
   - Installing ./zsh to /home/macie
```

### Uninstall dotfiles

This script use [stowsh](https://github.com/williamsmj/stowsh) to uninstall all configuration files located in not hidden directories (without dot).

```shell
$ ./uninstall.sh
 > Update stowsh... (downloaded in 0.262204s)
 > Uninstall packages:
   - Uninstalling ./zsh from /home/macie
```
