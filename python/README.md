# Yemeksepeti Joker Yakalayıcı

Bu betik dosyası yemeksepeti sitesinde joker bulmak için yazılmış bir uygulamadır. Uygulama Joker bulana kadar websitesinde gezinerek joker çıkmasını bekler. Joker çıktığında ise işlem yapılması için bekler.

Uygulama Python dilinde selenium kütüphanesi kullanılarak yazılmıştır.

### Kurulum

- Sistemde Pyhon3 kurulu olmalıdır. (3.7 sürümü önerilir)
Eğer sisteminizde Python3 kurulu değilse [Python Kurulumu](https://www.python.org/downloads/) sitesinden kullandığınız işletim sistemine göre gerekli kurulumu yapabilirsiniz.

- Selenium Webdriver kütüphanesi kurulu olmalıdır.
`pip install selenium` komutu ile gerekli gem yüklenmelidir.

- Girilecek olan parametrelerin formatı aşağıdaki gibi olmalıdır.

```python
  YEMEKSEPETI_EMAIL     = 'email@email.com'
  YEMEKSEPETI_PASSWORD  = 'password'
  YEMEKSEPETI_CITY      = 'elazig'
  YEMEKSEPETI_REGION    = 'firat-universitesi-merkez-kampus'
```

### Çalıştırma

- Uygulamayı `python joker.py email@email.com password elazig firat-universitesi-merkez-kampus` komutu ile çalıştırabilirsiniz.

