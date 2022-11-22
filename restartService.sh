#! /bin/bash
printf "\nRestarting Services: DNS, FTP, SSH and HTTP\n\n"

systemctl restart named
printf "DNS service restarted\n"
systemctl restart vsftpd
printf "FTP service restarted\n"
systemctl restart sshd
printf "SSH service restarted\n"
systemctl restart httpd
printf "HTTP service restarted\n"
printf "All mentioned services restarted\n"
