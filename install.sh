#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Installing termux-miscellaneous..."

BIN_DIR="$PREFIX/bin"
BASE_URL="https://raw.githubusercontent.com/tanazd1/termux-miscellaneous/main/bin"

for cmd in c cdt ns su tc tct x; do
    echo "[*] Installing $cmd..."
    
    if curl -sL "$BASE_URL/$cmd" -o "$BIN_DIR/$cmd"; then
        chmod +x "$BIN_DIR/$cmd"
        echo "[✓] Installed $cmd"
    else
        echo "[✗] Failed $cmd"
    fi
done

echo "[✓] Done!"
