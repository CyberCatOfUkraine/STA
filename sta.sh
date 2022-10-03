#!/bin/bash
echo "Виконується тестування сайту"

echo ""
echo "************"
NMAPFILE=/usr/bin/nmap
if [ ! -f "$NMAPFILE" ]; then
    echo "NMap не встановлено. Переривання роботи"
    echo "Офіційний репозиторій проекту: https://github.com/nmap/nmap"
    else
    echo "NMap на місці"
fi

echo "************"
echo ""

#nmap -sP 31.148.23.24
nmap -p0-65535 knute.edu.ua
echo ""
sleep 3s

echo ""
echo "************"
SpartaFILE=/usr/share/sparta/sparta
if [ ! -f "$SpartaFILE" ]; then
    echo "Sparta не встановлено. Переривання роботи"
    echo "Офіційний репозиторій проекту: https://github.com/nmap/nmap"
    else
    echo "Sparta на місці"
fi

echo "************"
echo ""

echo ""
echo "Sparta  запущено але тут доведеться проводити операції вручну"
echo "IP:   31.148.23.24"
/usr/share/sparta/sparta
echo ""
sleep 3s

echo ""
echo "************"
SSHFILE=/usr/bin/ssh
if [ ! -f "$SSHFILE" ]; then
    echo "SSH не встановлено. Переривання роботи"
    echo "Офіційний сайт проекту: https://www.openssh.com/"
    else
    echo "SSH на місці"
fi

echo "************"
echo ""

echo ""
echo "Спроба зайти з правами адміністратора"
ssh root@31.148.23.24 -p 10972
echo ""

echo ""
echo "************"
SniperFILE=/usr/share/sniper/sniper
if [ ! -f "$SniperFILE" ]; then
    echo "Sniper не встановлено. Переривання роботи"
    echo "Офіційний репозиторій проекту: https://github.com/1N3/Sn1per"
    else
    echo "Sniper на місці"
fi

echo "************"
echo ""


echo ""
sudo sniper -t 31.148.23.24 -o -re
echo ""
sleep 3s

echo "Звіт по вразливостям:"
echo ""
cat /usr/share/sniper/loot/workspace/31.148.23.24/vulnerabilities/vulnerability-report-31.148.23.24.txt

echo ""
echo ""
echo ""


echo "Програма завершить свою роботу через 10 секунд!"

sleep 10s
