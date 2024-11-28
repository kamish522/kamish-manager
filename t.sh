#!/bin/bash

# Восстановление прав доступа к директории /etc
echo "Восстанавливаем права доступа для директории /etc..."
sudo chmod 755 /etc
sudo chown root:root /etc

# Восстановление прав доступа для ключевых файлов
echo "Восстанавливаем права доступа для ключевых файлов..."
sudo chmod 644 /etc/passwd
sudo chmod 644 /etc/group
sudo chmod 600 /etc/shadow
sudo chmod 600 /etc/gshadow
sudo chmod 644 /etc/hosts
sudo chmod 644 /etc/resolv.conf
sudo chmod 644 /etc/fstab
sudo chmod 440 /etc/sudoers
sudo chmod 440 /etc/sudoers.d/*  # Если есть дополнительные файлы в /etc/sudoers.d

# Восстановление прав доступа для подкаталогов
echo "Восстанавливаем права доступа для подкаталогов..."
sudo chmod 755 /etc/ssh

# Установка прав для всех директорий и файлов
echo "Устанавливаем права 755 для всех директорий и 644 для всех файлов в /etc..."
sudo find /etc -type d -exec chmod 755 {} \;
sudo find /etc -type f -exec chmod 644 {} \;

# Восстановление владельца файлов
echo "Восстанавливаем владельца для всех файлов и директорий в /etc..."
sudo chown -R root:root /etc

# Проверка прав доступа
echo "Проверяем права доступа в директории /etc..."
ls -l /etc

echo "Восстановление прав доступа завершено."

