Dotfiles & `$HOME` Configuration
================================

A set of my personal configuration files and `$HOME` customization scripts. This application assumes that no current configuration exists or a backup does exist for current configuration in case the user wants to roll back.

Running Configuration
---------------------
1. Clone the reposiory or download the arhive.

1. Create and edit your own `configuration.conf` file. Skeleton available in `configuration.conf.default`:
```bash
mv configuration.conf.default configuration.conf
vi configuration.conf
```

1. Run the complete setup or edit dotfiles_setup.sh to comment out uneeded scripts
```bash
chmod 755 dotfiles_setup.sh
./dotfiles_setup.sh
```

Applications
------------
The following applications are configured:
+ git
+ nano (just in case I mess-up vi)

License
-------
See the LICENSE file
