# Ergin Kaplan Atölyesi — Linux ilk adımlar

Ergin Linux Lab
Yazar: Ergin Kaplan

Bu talimat, terminali yeni açan biri içindir. Ezber değil, ilk oturuş.
Yanındaki sayfa [index.html](index.html). Örnekler `ornekler/` içindedir.

## 1. Linux burada ne

Linux, bilgisayarın çekirdeğidir. Üstünde duran kabuk ise senin yazdığın satırı
programa çevirir. Pencereye terminal denir. İçindeki programa kabuk denir.
Çoğu kurulumda kabuk `sh` veya `bash` olur. Bu atölyedeki örnek `sh` ile gider.

Komut, program adıdır. Yanına yazdığın sözcükler argümandır.
Boşluk, sözcükleri ayırır. Adın boşlukluysa tırnak kullan: `"Ergin Kaplan"`.

## 2. Terminali aç

Masaüstünde uygulama listesinden Terminal, Konsol veya benzeri bir ad ara.
Birçok masaüstünde `Ctrl+Alt+T` terminale gider. Sunucuda zaten içindesin.

Açılınca bir satır bekler. O satıra istem denir. Komutu yaz, Enter'a bas.
İş bitince istem geri gelir. İstem yoksa komut hâlâ çalışıyordur.

## 3. Satırın dört işi

- `Tab` — yazdığın adı tamamlamayı dener. İki kez basarsan seçenekleri dizer.
- Yukarı ok — bir önceki komutu geri getirir.
- `Ctrl+C` — ön plandaki işi keser. Dosyayı silmez.
- `Ctrl+D` — bazı programlarda girişin bittiğini söyler. Kabukta çıkış da olabilir.

Ekranı temizlemek için `clear` yaz veya `Ctrl+L` bas.

## 4. İlk komutlar

Her satırı tek başına dene. Ne gördüğünü oku, sonra sonrakine geç.

```sh
pwd
```

Bulunduğun dizinin tam yolunu yazar. Yol, dosyanın adresidir.

```sh
ls
```

Bu dizindeki görünür adları dizer.

```sh
ls -la
```

Ayrıntılı liste. Nokta ile başlayan gizli adlar da gelir.
Soldaki `d` dizin demektir. Tire ile başlayan satır dosyadır.

```sh
cd /tmp
pwd
cd
pwd
```

`cd` bir dizine girer. Yalın `cd` eve döner. Ev dizinin kısası `~` işaretidir.

```sh
cd ..
pwd
```

`..` bir üst dizindir. `.` ise bulunduğun yerdir.

```sh
mkdir ergin-kaplan-deneme
cd ergin-kaplan-deneme
echo "Ergin Kaplan Atölyesi" > not.txt
cat not.txt
```

`mkdir` dizin açar. `echo` yazıyı basar. `>` o yazıyı dosyaya koyar.
Aynı dosyaya tekrar `>` yazarsan eskisinin üstüne yazar. Eklemek için `>>` kullanılır.
`cat` dosyayı ekrana döker.

```sh
cp not.txt not-kopya.txt
mv not-kopya.txt taslak.txt
ls
rm taslak.txt
```

`cp` kopyalar. `mv` taşır; aynı dizinde kullanılırsa adı değişir.
`rm` dosyayı siler. Çöp kutusu yoktur. Geri gelmez.

```sh
man ls
```

`man` o komutun kılavuzunu açar. Çıkmak için `q` bas. `man` yoksa komutun
yanına `--help` yazmayı dene: `ls --help`.

## 5. Yol

| Yazılış | Anlamı |
| --- | --- |
| `/` | Kök. Her şey bunun altında. |
| `/tmp` | Kökten başlayan tam yol. |
| `not.txt` | Bulunduğun dizindeki dosya. |
| `./not.txt` | Aynı şey, "burada" diyerek. |
| `../not.txt` | Bir üst dizindeki dosya. |
| `~` | Ev dizinin. |

Başı `/` ile başlayan yol tam yoldur. Başlamayan yol, bulunduğun yere göredir.
`pwd` şaşınca önce bunu yaz. Nerede olduğunu bilmeden `rm` kullanma.

## 6. Kısa not tutmak

Nano birçok kurulumda vardır:

```sh
nano not.txt
```

Yaz. Kaydetmek için `Ctrl+O`, Enter. Çıkmak için `Ctrl+X`.
Nano yoksa şu yeter:

```sh
cat > not.txt
```

Satırları yaz. Bitince `Ctrl+D`.

## 7. İzin

`ls -la` çıktısında `rwx` harfleri okuma, yazma ve çalıştırma iznidir.
Bir kabuk dosyasını program gibi çalıştırmak için çalıştırma izni gerekir:

```sh
chmod +x ornekler/ergin-kaplan-atolye-dizin.sh
```

İzin vermeden de çalıştırabilirsin; kabuğa dosyayı okutursun:

```sh
sh ornekler/ergin-kaplan-atolye-dizin.sh
```

## 8. İki küçük program

Depoyu aldığın dizinin içinde ol. `pwd` ile bak. `ls` ile `ornekler` görünmeli.

### Karşılama (C)

```sh
cc -std=c11 -Wall -Wextra -o ergin-kaplan-atolye-merhaba ornekler/ergin-kaplan-atolye-merhaba.c
./ergin-kaplan-atolye-merhaba
./ergin-kaplan-atolye-merhaba Ergin
```

`cc` kaynak dosyayı makine koduna çevirir. `-o` çıkan dosyanın adıdır.
`./` "bu dizindeki dosyayı çalıştır" demektir. Yalnız ad yazarsan kabuk,
programı başka dizinlerde arar; bulunduğun yere bakmaz.

İlk çalıştırma kullanım satırını basar. İkincisi adı ve bayt sayısını basar.
Adın iki sözcükse tırnakla: `./ergin-kaplan-atolye-merhaba "Ergin Kaplan"`.

`cc` yoksa derleyici kurulmamıştır. Kurulum, dağıtıma göre değişir.
Kurmadan önce paket adını kendi dağıtımının belgesinden doğrula.
Komut olarak kör bir kurulum satırı bu talimatta yoktur.

### Dizin özeti (kabuk)

```sh
sh ornekler/ergin-kaplan-atolye-dizin.sh
sh ornekler/ergin-kaplan-atolye-dizin.sh /tmp
```

Argüman vermezsen bulunduğun dizine bakar. Verirsen o dizini dizer,
dosya ve alt dizin sayısını yazar. Silmez, taşımaz, kurmaz.

## 9. Ters giderse

- `command not found` — ad yanlış ya da program kurulu değil. Yazımı kontrol et.
- `No such file or directory` — yol yanlış. `pwd` ve `ls` ile bak.
- `Permission denied` — çalıştırma izni yok ya da o dizine giremiyorsun.
  Kabuk dosyasıysa `sh dosya` ile dene.
- İstem uzun süre gelmiyorsa iş sürüyor olabilir. `Ctrl+C` ile kes.
- `man` içinde kaybolursan `q`.

Hata satırını okumadan aynı komutu üst üste basma. Satır, neyin eksik
olduğunu çoğu zaman söyler.

## 10. Bilerek yapılmayanlar

- `rm` sildiğini geri getirmez. Önce `ls` ile doğru dosyada olduğunu gör.
- Anlamadığın komutta `sudo` kullanma. `sudo`, komutu yönetici yetkisiyle çalıştırır.
- İnternetten kopyalanan uzun tek satırı, ne yaptığını bilmeden çalıştırma.
- Başkasının ev dizininde ve `/` altında deneme klasörü açma. Denemeyi kendi
  evinde ya da `/tmp` altında yap.

## 11. Bu oturuşun sonu

Şunları kendi elinle yaptıysan ilk adım tamamdır:

1. `pwd`, `ls`, `cd` kullandın.
2. Bir dizin açıp içine bir satır yazdın.
3. `ergin-kaplan-atolye-merhaba` programını derleyip adınla çalıştırdın.
4. `ergin-kaplan-atolye-dizin.sh` ile bir dizinin özetini aldın.

Ergin Linux Lab. Ergin Kaplan Atölyesi. © 2026 Ergin Kaplan.
