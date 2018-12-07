disable_upgrade_of_mysql:
  file.append:
      - name: /etc/yum.conf
      - text: exclude=mysql*
