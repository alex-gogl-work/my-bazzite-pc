# Базовый образ: Bazzite с KDE для видеокарт AMD (твой Ryzen 7840HS)
FROM ghcr.io/ublue-os/bazzite:stable

# Описание твоей личной сборки
LABEL title="alex-ai-station"
LABEL description="Сборка для разработки, 3D и ИИ"

# Копируем скрипт установки софта
COPY build.sh /tmp/build.sh

# Запускаем установку и сразу чистим временные файлы
RUN chmod +x /tmp/build.sh && /tmp/build.sh && rm /tmp/build.sh
