#!/bin/bash

# Funktion zur Überprüfung des Exit-Status-Codes und zum Anzeigen einer Fehlermeldung
check_status() {
    if [ $1 -ne 0 ]; then
        echo "Fehler: Ein Fehler ist aufgetreten. Abbruch."
        exit 1
    fi
}

# Aktualisiere das System
echo "Systemaktualisierung..."
yum update -y
check_status $?

# Installiere Python 3
echo "Python 3 Installation..."
yum install -y python3
check_status $?

# Installiere weitere Pakete oder Tools hier
# Beispiel: Installiere Git
# echo "Git Installation..."
# yum install -y git
# check_status $?

echo "Installation abgeschlossen."
