sed -e '/^ACTIVE_CONSOLES/ s_\[1-6\]_1_' -i /etc/sysconfig/init

cat > /etc/fstab <<EOF
none	/dev/pts	devpts	rw,gid=5,mode=620 0 0
none	/dev/shm	tmpfs	defaults 0 0
EOF
