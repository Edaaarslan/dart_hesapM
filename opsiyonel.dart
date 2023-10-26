import 'dart:io';

void main() {
  while (true) {
    print("İşlem tipini seçiniz:");
    print("1- Toplama");
    print("2- Çıkarma");
    print("3- Çarpma");
    print("4- Bölme");

    int secim = int.parse(stdin.readLineSync()!);

    if (secim >= 1 && secim <= 4) {
      double sonuc = 0; // Başlangıç değeri atandı.

      try {
        double param1, param2;
        print("İlk parametreyi giriniz: ");
        param1 = double.parse(stdin.readLineSync()!);

        print("İkinci parametreyi giriniz: ");
        param2 = double.parse(stdin.readLineSync()!);

        switch (secim) {
          case 1:
            sonuc = toplama(param1, param2);
            break;
          case 2:
            sonuc = cikarma(param1, param2);
            break;
          case 3:
            sonuc = carpma(param1, param2);
            break;
          case 4:
            sonuc = bolme(param1, param2);
            break;
        }

        print("İşlem sonucu: $sonuc");
      } catch (e) {
        print("Hata: $e");
      }
    } else {
      print("Geçersiz işlem seçimi. Lütfen 1-4 arası bir değer girin.");
    }

    print("Ana menüye dönmek için Enter tuşuna basın.");
    stdin.readLineSync();
  }
}

double toplama(double param1, double param2) {
  return param1 + param2;
}

double cikarma(double param1, double param2) {
  return param1 - param2;
}

double carpma(double param1, double param2) {
  return param1 * param2;
}

double bolme(double param1, double param2) {
  if (param2 == 0) {
    throw "Bölme işlemi sıfıra bölünemez.";
  }
  return param1 / param2;
}
