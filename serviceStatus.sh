#! /bin/bash
printf "The status of the services are...\n\n"
namedStatus=$(systemctl status named | awk '/Active/ {print $2}')
vsftpdStatus=$(systemctl status vsftpd | awk '/Active/ {print $2}')
sshdStatus=$(systemctl status sshd | awk '/Active/ {print $2}')
httpdStatus=$(systemctl status httpd | awk '/Active/ {print $2}')

printf "DNS Service: $namedStatus\n\n"
printf "FTP Service: $vsftpdStatus\n\n"
printf "SSH Service: $sshdStatus\n\n"
printf "HTTPD Service: $httpdStatus\n\n"
