set -x

#set the articeture for your installation
ARC="amd"
DEST="/isofiles"

xorriso -osirrox on -indev\
	/tmp/debian-12.4.0-amd64-netinst.iso\
	-extract / $DEST

chmod +w -R $DEST/install.$ARC/

gunzip $DEST/install.$ARC/initrd.gz

echo preseed.cfg | cpio -H newc -o -A -F $DEST/install.$ARC/initrd

gzip $DEST/install.$ARC/initrd

chmod -w -R $DEST/install.$ARC/

chmod +w $DEST/md5sum.txt

find $DEST -follow -type f ! -name md5sum.txt -print0 |\
	xargs -0 md5sum > $DEST/md5sum.txt

chmod -w $DEST/md5sum.txt

cp /tmp/preseed.cfg $DEST/preseed.cfg

genisoimage -r -J -b isolinux/isolinux.bin -c isolinux/boot.cat \
	-no-emul-boot -boot-load-size 4 -boot-info-table \
	-o /tmp/$NAME $DEST

cp /tmp/$NAME /result/$NAME
