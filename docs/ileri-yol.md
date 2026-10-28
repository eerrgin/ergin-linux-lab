# Ergin Linux Lab — ileri yol

Bu belge bir kontrol listesi. Her aşamayı tamamlanmış saymak için sadece komutun çalışması yetmez: bir beklenen sonuç, en az bir hata senaryosu ve geri dönüş notu yaz.

## A. Sistem okuma
- [ ] `/etc/os-release`, çekirdek sürümü, kullanıcı ve gruplar
- [ ] dosya sistemi, mount, inode ve disk doluluğu
- [ ] süreç ağacı, sinyaller, exit status ve zombie süreçler
- [ ] systemd unit durumu ve `journalctl` kayıtları
- [ ] bellek baskısı, CPU yükü ve I/O bekleme farkı

## B. Ağ ve servisler
- [ ] DNS çözümleme, rota, yerel port ve TCP durumu
- [ ] TLS sertifika zinciri ve süre sonu
- [ ] yalnızca kendi yerel test servisine istek/yanıt ölçümü
- [ ] zaman aşımı, yeniden deneme ve idempotency deneyi
- [ ] hata sonrası servis toparlanma süresini ölçme

## C. Güvenli işletim
- [ ] ayrı kullanıcı ve en az ayrıcalık ilkesi
- [ ] dosya izinleri, ACL ve Linux capabilities
- [ ] SSH anahtarlarının saklanması ve erişim gözden geçirmesi
- [ ] paket deposu, imza kontrolü ve sürüm sabitleme
- [ ] yedek alıp ayrı dizinde geri yüklemeyi doğrulama
- [ ] olay zaman çizelgesi ve kısa olay raporu

## D. Platform ve iç gözlem
- [ ] `strace` ile küçük bir sürecin sistem çağrılarını oku
- [ ] namespace ve cgroup kavramlarını rootless konteynerde incele
- [ ] `perf` ile profil al; ölçüm maliyetini de not et
- [ ] eBPF'yi yalnızca desteklenen test VM'inde incele
- [ ] QEMU/sanal makinede çekirdek derleme veya boot gözlemi
- [ ] aynı kaynak için iki temiz derlemeyi karşılaştır

## E. Üst proje tanımları

### Kernel Atlas
Küçük bir komut satırı programı başlat, dosya erişimlerini izle, sistem çağrılarını örnekle ve bulguyu insan tarafından okunur bir zaman çizelgesine çevir. Önce mevcut araçları kullan; özel tracer yazmayı ancak sınırlar ve testler netleşince düşün.

### Rootless Runtime Lab
Bir uygulamayı rootless konteynerde çalıştır; ağ, mount, kullanıcı ve kaynak sınırlarını tabloya dök. Host üzerinde çalıştırılacak komutların her birine geri alma adımı ekle.

### Supply-Chain Ledger
Paket yöneticisinden paket adı/sürümü/kaynağı topla; lisans kimliklerini SPDX formatında kaydet; imza kontrol sonucunu ayrı sütunda tut. Belirsiz sonucu “temiz” diye etiketleme.

### Service Failure Gym
Yalnızca yerel örnek serviste zaman aşımı, geçersiz yapılandırma ve kontrollü kapanma senaryoları üret. Başarı ölçütü; hata tespiti, doğru günlük ve tutarlı toparlanma davranışıdır.

### Tiny Init / Process Watch
C ile çocuk süreç, sinyal ve bekleme davranışını gösteren öğretici bir program yaz. Gerçek sistem init'inin yerine geçmez; sadece yalıtılmış VM'de deney yapılır.

### Reproducible Build Bench
İki temiz ortamda aynı kodu derle, araç sürümlerini kaydet, artefakt karmalarını karşılaştır. Farkları açıklamadan “tekrarlanabilir” deme.

## Laboratuvar kuralları
- Önce sanal makine veya geçici kullanıcı alanı.
- İlk turda `sudo` yok; gerekirse önce gerekçeyi ve geri dönüş adımını yaz.
- Üretim makinelerinde hata üretme ve başkasının sistemine tarama yapma.
- Çıktılarda kullanıcı adı, iç IP, host adı, dosya yolu veya sır bulunup bulunmadığını kontrol et.
