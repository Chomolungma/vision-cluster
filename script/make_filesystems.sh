sudo parted /dev/sdb mklabel gpt
sudo parted -a opt /dev/sdb mkpart primary ext4 0% 100%
sudo mkfs.ext4 -L localssd1 /dev/sdb1
sudo mkdir -p /mnt/localssd1
echo "/dev/sdb1 /mnt/localssd1 ext4 defaults 0 2" | sudo tee -a /etc/fstab

sudo parted /dev/sdc mklabel gpt
sudo parted -a opt /dev/sdc mkpart primary ext4 0% 100%
sudo mkfs.ext4 -L localssd2 /dev/sdc1
sudo mkdir -p /mnt/localssd2
echo "/dev/sdc1 /mnt/localssd2 ext4 defaults 0 2" | sudo tee -a /etc/fstab

sudo mount -a
sudo chmod a+rwx /mnt/localssd1
sudo chmod a+rwx /mnt/localssd2
