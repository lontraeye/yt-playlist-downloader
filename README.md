# yt-playlist-downloader

Script simples em Bash para baixar vídeos ou playlists do YouTube direto em MP3, já com thumbnail incorporada e metadados organizados.
Criei para facilitar meu uso diário no Linux, evitando ter que lembrar todas as flags do yt-dlp.

📦 Requisitos
    • yt-dlp
    • ffmpeg
    • bash
Instalação no Arch Linux
sudo pacman -S yt-dlp ffmpeg
Em outras distribuições, instale via gerenciador de pacotes ou usando:
pip install -U yt-dlp

▶️ Uso
Dê permissão de execução:
chmod +x yt-dlp-mp3.sh
Execute:
./yt-dlp-mp3.sh
O script irá solicitar o link do vídeo ou playlist.
Basta colar e pressionar Enter.

📁 Organização dos arquivos
Para playlists, os arquivos são organizados automaticamente:
Nome da Playlist/ 01 - Música 1.mp3 02 - Música 2.mp3

⚙️ O que o script faz
    • Baixa o melhor áudio disponível
    • Converte para MP3
    • Incorpora thumbnail como capa
    • Adiciona metadados
    • Ignora erros e continua downloads de playlist
