# Remaster debian iso with Docker
#### comes with a nice post install dir

## Prerequisites
1. Debian iso file
2. Docker
   
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

