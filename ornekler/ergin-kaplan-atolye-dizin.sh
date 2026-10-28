#!/bin/sh
# © 2026 Ergin Kaplan
# Ergin Linux Lab — Ergin Kaplan Atölyesi
# Baktığın dizinin kim olduğunu ve içinde ne durduğunu yazar.

set -eu

hedef="${1:-.}"

echo "Ergin Linux Lab"
echo "Ergin Kaplan Atölyesi"
echo "kullanıcı: $(id -un)"
echo "bulunduğun yer: $(pwd)"
echo "baktığın dizin: $hedef"
echo

if [ ! -d "$hedef" ]; then
    echo "Dizin değil ya da yok: $hedef" >&2
    exit 1
fi

echo "içerik:"
ls -la "$hedef"
echo

dosya=0
dizin=0

for yol in "$hedef"/* "$hedef"/.[!.]* "$hedef"/..?*; do
    if [ ! -e "$yol" ]; then
        continue
    fi
    if [ -d "$yol" ]; then
        dizin=$((dizin + 1))
    else
        dosya=$((dosya + 1))
    fi
done

echo "dosya: $dosya"
echo "alt dizin: $dizin"
