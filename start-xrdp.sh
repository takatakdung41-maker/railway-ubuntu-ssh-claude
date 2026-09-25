#!/bin/bash
# Start D-Bus + xrdp, lalu serahkan ke entrypoint asli (sshd foreground)
service dbus start 2>/dev/null || true
/usr/sbin/xrdp-sesman
/usr/sbin/xrdp
exec /usr/local/bin/ssh-user-config.sh
