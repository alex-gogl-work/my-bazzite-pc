#!/usr/bin/env bash

set -ouex pipefail

# 1. Установка проверенных системных пакетов
# (Я убрал блок Antigravity, чтобы сборка точно прошла)
dnf install -y \
    git \
    python3-pip \
    typst \
    fish \
    btop \
    fastfetch \
    distrobox

# 2. Очистка кэша
dnf clean all
