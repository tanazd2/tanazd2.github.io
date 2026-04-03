#!/data/data/com.termux/env bash

echo "[*] Uninstalling termux-miscallious..."

BIN_DIR="$PREFIX/bin"

for cmd in *; do
    # skip non-files and repo files
    [ -f "$cmd" ] || continue
    case "$cmd" in
        install.sh|uninstall.sh|README.md) continue ;;
    esac

    if [ -f "$BIN_DIR/$cmd" ]; then
        rm -f "$BIN_DIR/$cmd"
        echo "[✓] Removed $cmd"
    else
        echo "[!] Not installed: $cmd"
    fi
done

echo "[✓] Done!"
