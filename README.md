Download debian.iso https://www.debian.org/distrib/netinst

There are a few moving parts. I have not touch all types of debian instalations.
Just amd. 

isoliunx.cfg is used to start the instalation with out having to hit enter
in the instalation menu.

```
default custom-saltstack
label custom-saltstack
  menu label ^Install Debian Server w/ Saltstack minion
  kernel /install.amd/vmlinuz
  append  vga=768 console-setup/ask_detect=false initrd=/install.amd/initrd.gz quiet ---
```

replace .amd with the path you would need.

```bash
curl -o "debian-12.iso" "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-12.4.0-amd64-netinst.iso"
```
