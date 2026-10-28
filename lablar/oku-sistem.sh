#!/bin/sh
# Ergin Linux Lab - salt-okunur sistem özeti
# Paket kurmaz, dosya yazmaz/silmez, servis değiştirmez ve sudo çağırmaz.
set -u

line() { printf '\n== %s ==\n' "$1"; }
has() { command -v "$1" >/dev/null 2>&1; }

printf 'Ergin Linux Lab / salt-okunur gözlem\n'
printf 'Bu çıktı yerel sistem ayrıntıları içerebilir; paylaşmadan önce incele.\n'

line "Dağıtım"
if [ -r /etc/os-release ]; then
  . /etc/os-release
  printf '%s\n' "${PRETTY_NAME:-Dağıtım adı okunamadı}"
else
  printf ' /etc/os-release bulunamadı\n'
fi

line "Çekirdek ve mimari"
uname -srmo 2>/dev/null || uname -a

line "Geçerli kullanıcı"
id 2>/dev/null || printf 'id komutu çalıştırılamadı\n'

line "Süre ve yük"
if has uptime; then uptime; else printf 'uptime komutu yok\n'; fi

line "Bellek"
if has free; then free -h; else printf 'free komutu yok\n'; fi

line "Dosya sistemleri"
if has df; then df -hT 2>/dev/null || df -h; else printf 'df komutu yok\n'; fi

line "CPU kullanımına göre ilk süreçler"
if has ps; then
  ps -eo pid,comm,pcpu,pmem --sort=-pcpu 2>/dev/null | head -n 9 || ps -eo pid,comm
else
  printf 'ps komutu yok\n'
fi

line "Dinleyen TCP uçları"
if has ss; then
  ss -ltn 2>/dev/null || printf 'ss kullanılabilir değil\n'
else
  printf 'ss komutu yok; ağ paketi kurulumu yapılmadı\n'
fi

line "Başarısız servisler (varsa)"
if has systemctl; then
  systemctl --failed --no-legend --no-pager 2>/dev/null || printf 'systemd bu ortamda erişilebilir değil\n'
else
  printf 'systemctl yok; bu ortam systemd kullanmıyor olabilir\n'
fi

printf '\nBitti. Hiçbir ayar değiştirilmedi.\n'
