# Remaster debian iso with Docker to be FAI
#### comes with a nice post install dir

This guide provides step-by-step instructions for remastering debian iso using docker.

## Prerequisites

1. **Download Debian ISO**: First, download the Debian ISO file from the official website. Use the link [Debian ISO Download](https://www.debian.org/distrib/netinst).

## Installation Process

### Step 1: Modify isolinux.cfg

The `isolinux.cfg` file automates the installation process without the need to interact with the installation menu.

```cfg
default custom-saltstack
label custom-saltstack
  menu label ^Install Debian Server w/ Saltstack minion
  kernel /install.amd/vmlinuz
  append  vga=768 console-setup/ask_detect=false initrd=/install.amd/initrd.gz quiet ---
```
