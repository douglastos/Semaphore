#!/usr/bin/env bash
set -uo pipefail

echo "[INFO] Instalando dependências de build..."
sudo yum install -y gcc openssl-devel bzip2-devel libffi-devel wget make zlib-devel xz-devel readline-devel sqlite-devel

echo "[INFO] Baixando Python 3.8.18..."
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.8.18/Python-3.8.18.tgz
sudo tar xzf Python-3.8.18.tgz
cd Python-3.8.18

echo "[INFO] Compilando e instalando Python 3.8.18..."
sudo ./configure --enable-optimizations
sudo make -j$(nproc)
sudo make altinstall

echo "[INFO] Criando symlink para python3..."
sudo ln -sf /usr/local/bin/python3.8 /usr/bin/python3