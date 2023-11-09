#!/bin/bash

# Installieren
apt install mysql-server

# Starten & Aktivieren
systemctl start mysql
systemctl enable mysql

# Datenbank erzeugen
mysql -u root -proot -e "CREATE DATABASE starchaser;"

# User + Password + privileges
mysql -u root -proot -e "CREATE USER 'Hans'@'localhost' IDENTIFIED BY 'Dampfmaschine4711';"
mysql -u root -proot -e "GRANT ALL PRIVILEGES ON starchaser.* TO 'Hans'@'localhost'; FLUSH PRIVILEGES;"

# Installation der Python-Abhängigkeiten 
pip install -r requirements.txt

