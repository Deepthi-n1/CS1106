mkdir /tmp/Backup

cp *.c /tmp/Backup
cp *.py /tmp/Backup

cd /tmp
ls Backup

tar -czvf /tmp/Backup-2025-03-28.tar.gz -C /tmp Backup

udisksctl mount -b /dev/sda1

mv /tmp/Backup-2025-03-28.tar.gz /media/RVU/Pendrive

udisksctl unmount -b /dev/sda1
rm -r /tmp/backup
