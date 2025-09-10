# workstation

_**IMPORTANT**: Please read the README.md and LICENSE files before using. Take a snapshot and backup data before deploying and test first in a non-production environment._

## Intro

`data-workstation` automates management of Ubuntu workstations used for Python data projects.

It installs software, configures the UI, creates a directory framework and project templates, and handles backups.

Links:

- [Website](https://www.pydatk.com/)
- [Discussion](https://github.com/pydatk/data-workstation/discussions)
- [Issues](https://github.com/pydatk/data-workstation/issues)

## Environment

`data-workstation` is compatible with Ubuntu 24 LTS. It is intended for deployment on new, single-user virtual machine installations. 

`data-workstation` can run on the following minimum recommended VMWare Workstation configuration:

- 25GB single file (monolithic) disk
- 4GB RAM
- 2 processors
- No USB device support (optional for security)
- Turned off "Accelerate 3D Graphics" (optional, fixes some display issues)

Recommended options for Ubuntu installation:

- Interactive installation
- Default selection (minimal tools)
- Install third-party/media support
- Use LVM disk encryption

## Installing and updating

The easiest way to install and update `data-workstation` is by cloning the public GitHub repository and running the program straight from there.

To install git: `sudo apt install git`

To clone the `data-workstation` repository into `~/data-workstation`:

```
$ git clone https://github.com/pydatk/data-workstation.git ~/data-workstation/
```

Or in one line:

```
$ sudo apt install git && git clone https://github.com/pydatk/data-workstation.git ~/data-workstation/
```

To update (recommended each time you run `data-workstation`):

```
$ git -C ~/data-workstation pull
```

As an alternative to using git, you can also [download the latest release](https://github.com/pydatk/data-workstation/releases).

## Setup

Run the setup module to apply updates. With the `auto-none` option, you will be asked for confirmation before applying each update.

```
$ ./data-workstation.sh setup auto-none
```

## Backup

Create a backup:

```
$ ./data-workstation.sh project
```

## Tools

### dconf_diff

Use `dconf_diff` to identify updated dconf keys/values after making changes to Ubuntu settings. If differences are found, use dconf Editor's search function to find the key(s).

To run:

```
$ cd ~/data-workstation/tools
$ ./dconf_diff.sh
```