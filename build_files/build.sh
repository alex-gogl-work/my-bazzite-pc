#!/usr/bin/env bash

set -ouex pipefail

# 1. Добавляем репозиторий Google Antigravity (Актуально для 2026)
dnf config-manager --add-repo https://packages.antigravity.google/rpm

# 2. Установка системных пакетов (Layering)
# Эти программы будут вшиты в само ядро твоей системы
dnf install -y \
    antigravity \
    git \
    python3-pip \
    typst \
    fish \
    btop \
    fastfetch \
    distrobox

# 3. Очистка кэша, чтобы образ был легким
dnf clean all
