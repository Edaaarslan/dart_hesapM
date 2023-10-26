import 'dart:io';

void main() {
  while (true) {
    print("İşlem tipini seçiniz:");
    print("1- Toplama");
    print("2- Çıkarma");
    print("3- Çarpma");
    print("4- Bölme");
    print("5- Çıkış");

    int secim = int.parse(stdin.readLineSync()!);

    if (secim == 5) {
      print("Programdan çıkılıyor...");
      break;
    }

    if (secim < 1 || secim > 4) {
      print("Geçersiz işlem seçimi. Lütfen 1-4 arasında bir seçim yapın.");
      continue;
    }

    print("Birinci parametreyi giriniz: ");
    double parametre1 = double.parse(stdin.readLineSync()!);

    print("İkinci parametreyi giriniz: ");
    double parametre2 = double.parse(stdin.readLineSync()!);

    double? sonuc = null;

    try {
      switch (secim) {
        case 1:
          sonuc = toplama(parametre1, parametre2);
          break;
        case 2:
          sonuc = cikarma(parametre1, parametre2);
          break;
        case 3:
          sonuc = carpma(parametre1, parametre2);
          break;
        case 4:
          sonuc = bolme(parametre1, parametre2);
          break;
      }
      if (sonuc != null) {
        print("Sonuç: $sonuc\n");
      }
    } catch (e) {
      print("Hata oluştu: $e");
    }
  }
}

double toplama(double sayi1, double sayi2) {
  return sayi1 + sayi2;
}

double cikarma(double sayi1, double sayi2) {
  return sayi1 - sayi2;
}

double carpma(double sayi1, double sayi2) {
  return sayi1 * sayi2;
}

double bolme(double sayi1, double sayi2) {
  if (sayi2 == 0) {
    throw "Sıfıra bölme hatası!";
  }
  return sayi1 / sayi2;
}
