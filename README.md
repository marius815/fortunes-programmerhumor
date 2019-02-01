# fortunes-programmerhumor

A collection of programmer humor "few-liners" jokes I've come across. They aren't necessarily very funny, but I wanted to have my own list of fortunes piped through [lolcat](https://github.com/busyloop/lolcat). :rainbow:

## Usage

You would want to make sure you have the `fortune` package on your operating system. It can generally be installed with modern package managers. See [fortune-mod](https://github.com/shlomif/fortune-mod) for a maintained version.

```shell
# Debian based
apt-get install fortune-mod

# Arch linux
pacman -S fortune-mod

# Mac
brew install fortune
```

Clone this repository

```shell
git clone git@github.com:marius815/fortunes-programmerhumor.git
```

Create the data file

```shell
cd fortunes-programmerhumor
sh build.sh
```

Then copy the files located in `output/` into the fortune data directory (generally `/usr/share/games/fortunes`)

```shell
cp output/programmerhumor* /usr/share/games/fortunes/
```

Run the following command and prepare to lightly blow some air out of your nose :triumph:

```shell
fortune programmerhumor
Wanna hear a UDP joke? You might not get it.
```
