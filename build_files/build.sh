#!/usr/bin/env bash

set -ouex pipefail

# 1. Создаем файл репозитория вручную (так надежнее в контейнере)
cat <<EOF > /etc/yum.repos.d/antigravity.repo
[antigravity]
name=Google Antigravity
baseurl=https://packages.antigravity.google/rpm
enabled=1
gpgcheck=0
EOF

# 2. Установка системных пакетов
dnf install -y \
    antigravity \
    git \
    python3-pip \
    typst \
    fish \
    btop \
    fastfetch \
    distrobox

# 3. Очистка
dnf clean all
