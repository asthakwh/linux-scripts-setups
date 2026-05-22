#check virtualization is enabled or not
egrep -c '(vmx|svm)' /proc/cpuinfo
#check cPU
sudo apt install cpu-checker -y
#result will be
kvm-ok


sudo apt-get update
sudo apt -y upgrade

# sudo apt install -y qemu-kvm virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils
#or in ubuntu
sudo apt install -y qemu-system-x86 virt-manager libvirt-daemon-system virtinst libvirt-clients bridge-utils
sudo systemctl enable --now libvirtd
sudo systemctl start libvirtd
sudo systemctl status libvirtd
#give present user permission
sudo usermod -aG kvm $USER
sudo usermod -aG libvirt $USER
#check if permissions are allocate or not
sudo groups priya
# start kvm from gui
