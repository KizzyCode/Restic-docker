#!/bin/sh
set -euo pipefail

# Set the user password
echo "restic:${SMB_PASS}" | chpasswd
echo -e "${SMB_PASS}\n${SMB_PASS}" | smbpasswd -L -a -c "/etc/samba/smb.conf" "restic"
