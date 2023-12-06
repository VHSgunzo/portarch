# **PortArch**

## **Portable [Arch Linux](https://archlinux.org) based on the [RunImage](https://github.com/VHSgunzo/runimage) container.**

![Screenshot_20230829_215035](https://github.com/VHSgunzo/portarch/assets/57139938/abece8e2-8140-4895-a2ca-679ed003790f)

## Features:
* All [features](https://github.com/VHSgunzo/runimage#features) available in a base [RunImage](https://github.com/VHSgunzo/runimage) container
* `OverlayFS` mode enabled
* Home directory sandboxed
* Network sandboxed
* А full `DE` (`XFCE`) in `windowed/full screen` (`Xephyr`) mode or on `TTY` (`Xorg`)

## Requirements:

* All the [requirements](https://github.com/VHSgunzo/runimage#requirements) required for a base [RunImage](https://github.com/VHSgunzo/runimage) container

## To get started:

1. Download latest release from the [**releases**](https://github.com/VHSgunzo/portarch/releases) page. ([HF mirror](https://huggingface.co/runimage/portarch/tree/main/releases))
2. Make it executable before run:
```
chmod +x portarch
```
3. Run `PortArch`:
```
./portarch {RunImage args} {executable} {executable args}
```

## Usage: see [RunImage usage](https://github.com/VHSgunzo/runimage#usage-from-runimage-help)
* For greater ease of use, I recommend creating a separate directory for the container before launching.
* You can also add it to your `PATH`
* To run a full-fledged `DE` on `TTY` with builtin `Xorg`, just switch to a free `TTY` by `CTRL+ALT+F1-12`, login and run `portarch` without arguments
* When running `portarch` without arguments on the desktop of the host system, a full-fledged `DE` will start in `windowed/full screen` mode with `Xephyr` (see `XEPHYR_`* and `UNSHARE_CLIPBOARD` vars in [RunImage usage](https://github.com/VHSgunzo/runimage#usage-from-runimage-help))
