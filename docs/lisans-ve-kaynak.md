# Lisans ve kaynak kontrol listesi

Bu dosya hukuki görüş değildir. Bileşen lisanslarını kaydetme ve yeniden dağıtım öncesi teknik kontrol için yazılmıştır.

## Temel ayrım
Linux çekirdeği GPL-2.0-only lisanslıdır; çekirdek ağacındaki bazı dosyaların kendilerine ait lisans tanımları/istisnaları olabilir. Bir Linux dağıtımının tamamı tek lisansla açıklanamaz. Paketler, kütüphaneler, uygulamalar ve firmware kendi koşullarına sahip olabilir.

Resmî kaynak: [Linux kernel licensing rules](https://docs.kernel.org/process/license-rules.html) ve [kernel.org FAQ](https://www.kernel.org/category/faq.html).

## Bir bileşen eklemeden önce
1. Kaynak URL'sini, sürümü ve geliştirici/sağlayıcıyı kaydet.
2. Dağıtımın paket yöneticisiyle gelen bileşende, paket meta verisini ve imza doğrulamasını kontrol et.
3. Dosyanın lisans metnini ve varsa SPDX kimliğini doğrula; isimden tahmin etme.
4. Kaynak kodu değiştirilmişse orijinal lisans bildirimlerini koru ve yükümlülükleri incele.
5. İkili dosya veya firmware yeniden dağıtılacaksa dağıtım iznini ayrıca kontrol et.
6. Kaynak, lisans, doğrulama yöntemi ve sonuç için kısa bir kayıt tut.

## Bu depo
Bu depodaki özgün sayfa ve örnekler `BELIRT.md` ile korunur. Açık bir yeniden kullanım lisansı verilmediği için bu projeyi başkalarının kodunu serbestçe yeniden dağıtma izni gibi göstermeyin. Yukarıdaki bağlantılar referans olarak verilmiştir; üçüncü taraf içerikler kopyalanıp bu depoya eklenmemiştir.

## Basit kayıt şablonu

| Alan | Örnek açıklama |
| --- | --- |
| Bileşen | Paket/kitaplık/firmware adı |
| Sürüm | Tam sürüm ve gerekiyorsa commit |
| Kaynak | Resmî proje veya paket kaynağı |
| Lisans | Doğrulanmış SPDX kimliği veya lisans adı |
| İmza | doğrulandı / doğrulanamadı / uygulanmıyor |
| Değişiklik | yerel yama var mı |
| Dağıtım | kendi kullanımım / yeniden dağıtım / hizmet |
| Karar | onaylandı / bekliyor / reddedildi, kısa gerekçe |
