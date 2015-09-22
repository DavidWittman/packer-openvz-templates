yum -y erase gtk2 libX11 hicolor-icon-theme avahi freetype bitstream-vera-fonts postfix
yum -y clean all

# Remove generated SSH host keys (these will be auto-generated at boot)
rm -f /etc/ssh/ssh_host*

# udev and network cleanup
rm -f /etc/udev/rules.d/70-persistent-net.rules

# RHEL-specific cleanup
if [[ -r /etc/redhat-release ]]; then
    rm -f /etc/sysconfig/network-scripts/ifcfg-eth*
    rm -f ~root/anaconda-ks.cfg ~root/install.log*
fi

# Clean up logs, history, and temporary files
> /var/log/wtmp
> /var/log/btmp
> /var/log/lastlog
find /var/log -type f -exec rm -f {} \;
rm -rf /var/tmp/*
rm -rf /tmp/*
rm -f ~root/.bash_history
unset HISTFILE
