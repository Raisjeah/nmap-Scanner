#!/bin/bash
# Nmap Network Scanner by   [raisjeah]


clear
echo "======================================"
echo "    NETHUNTER NMAP SCANNER TOOL       "
echo "======================================"
echo "1. Cek Perangkat Aktif (Host Discovery)"
echo "2. Scan Port & Versi Layanan"
echo "3. Scan Agresif (OS Detection)"
echo "4. Keluar"
echo "--------------------------------------"
read -p "Pilih Menu [1-4]: " pilihan

if [ $pilihan -eq 4 ]; then exit; fi

read -p "Masukkan Target (Contoh: 192.168.1.1): " target

case $pilihan in
  1) nmap -sn $target ;;
    2) nmap -sV $target ;;
      3) nmap -A $target ;;
        *) echo "Pilihan tidak tersedia." ;;
        esac
        
        echo "--------------------------------------"
        echo "Proses Selesai."
        
