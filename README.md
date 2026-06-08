# hydra-auto-runner

Bash script interaktif untuk menjalankan Hydra lebih cepat dan mudah.  
Dibuat khusus untuk edukasi dan authorized security testing saja.

## Features
- **Interactive Mode**: Gak perlu hapal command Hydra yang panjang
- **Multi-Service**: Support SSH, FTP, HTTP-POST-FORM, HTTP-GET-FORM  
- **Input Validation**: Cek otomatis apakah wordlist ada
- **Colorized Output**: Tampilan lebih jelas dan mudah dibaca
- **Flexible**: Bisa pakai `-l` single user atau `-L` userlist

## Requirements
- Linux / Termux / WSL
- Hydra terinstall
- Bash

## Installation
```bash
git clone https://github.com/semb-commits/hydra-auto-runner.git
cd hydra-auto-runner
chmod +x hydra-run.sh
