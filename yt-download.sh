#!/usr/bin/env bash
# Script: yt-dlp-mp3.sh
# Descrição: Baixa vídeos ou playlists do YouTube em formato MP3 com miniatura e metadados.

# Verifica se o yt-dlp está instalado
if ! command -v yt-dlp &>/dev/null; then
    echo "yt-dlp não encontrado. Instale com: sudo pacman -S yt-dlp"
    exit 1
fi

# Solicita o link
read -rp "Insira o link do vídeo ou playlist: " LINK

# Sai se o usuário não digitar nada
if [ -z "$LINK" ]; then
    echo "Nenhum link inserido. Saindo..."
    exit 1
fi

# Executa o download
yt-dlp -f "bestaudio" \
  -x --audio-format mp3 --audio-quality 0 \
  --embed-thumbnail --add-metadata \
  --ignore-errors \
  -o "%(playlist_title)s/%(playlist_index)s - %(title)s.%(ext)s" \
  "$LINK"
