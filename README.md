# Ergin Linux Lab

Ergin Kaplan Atölyesi · Sistem mühendisliği çalışma alanı

Linux Lab, terminal temellerinden sistem yönetimine, güvenli işletime, gözlemlenebilirliğe ve platform mühendisliğine uzanan aşamalı bir laboratuvardır. Hedef, komutları ezberlemekten çok davranışları ölçebilmek ve sonuçları açıklayabilmektir.

## Başlangıç

```sh
git clone https://github.com/eerrgin/ergin-linux-lab.git
cd ergin-linux-lab
sh lablar/oku-sistem.sh
```

Betik salt-okunur bir genel bakış verir; paket kurmaz, dosya silmez, servis değiştirmez ve yönetici yetkisi istemez. Çıktıdaki süreç ve sistem bilgilerini herkese açık paylaşmadan önce gözden geçir.

## Depo düzeni

| Yol | İçerik |
| --- | --- |
| `index.html` | Görsel rehber ve mühendislik rotası |
| `ergin-kaplan-atolye-talimat.md` | Terminal ilk adımlar |
| `ornekler/` | C ve kabuk örnekleri |
| `lablar/oku-sistem.sh` | Salt-okunur sistem özeti |
| `docs/ileri-yol.md` | İleri seviye proje planı |
| `docs/lisans-ve-kaynak.md` | Lisans, paket ve kaynak kontrol listesi |
| `BELIRT.md` | Bu depoya ait hak bildirimi |

## İlerleme ekseni

1. Kabuk, dosya sistemi, yönlendirme ve izinler.
2. Süreçler, systemd, günlükler, bellek ve disk.
3. Ağ, DNS, soketler, TLS ve yerel ölçüm.
4. En az ayrıcalık, imzalı paketler, yedek ve olay müdahalesi.
5. Sistem çağrıları, namespaces/cgroups, eBPF ve sanal makinede çekirdek çalışmaları.
6. CI, yeniden üretilebilir derlemeler, SBOM ve sürüm/provenance kaydı.

Linux çekirdeği ile bir dağıtımın bütün bileşenlerinin lisansını tek kabul etme. Üçüncü taraf dosya eklemeden veya dağıtmadan önce kaynak ve lisans koşullarını dosya/paket bazında doğrula.

## Haklar

Özgün içerik ve örnekler için geçerli bildirim `BELIRT.md` içindedir. Bu depo açık bir yeniden kullanım lisansı vermemektedir; herkese açık olması tek başına yeniden dağıtım izni sağlamaz.
