# Yemeksepeti Joker Yakalayıcı

Bu betik dosyası yemeksepeti sitesinde joker bulmak için yazılmış bir uygulamadır. Uygulama Joker bulana kadar websitesinde gezinerek joker çıkmasını bekler. Joker çıktığında ise işlem yapılması için bekler.

Uygulama Ruby dilinde selenium web framework kullanılarak yazılmıştır.

### Kurulum

- Sistemde Ruby kurulu olmalıdır. (2.6.3 sürümü önerilir)
Eğer sisteminizde ruby kurulu değilse [Ruby Kurulumu](https://alperenbozkurt.net/Ruby-ve-rails-kurulumu/) isimli blog yazımı ziyareft edebilirsiniz.

- Selenium Webdriver gem kurulu olmalıdır.
`gem install selenium-webdriver` komutu ile gerekli gem yüklenmelidir.

- Aşağıdaki çevre değişkenleri oluşturulmalıdır veya kod satırından düzenlenebilir.

```ruby
  YEMEKSEPETI_EMAIL     = 'email@email.com'
  YEMEKSEPETI_PASSWORD  = 'Password1'
  YEMEKSEPETI_CITY      = 'ankara'
  YEMEKSEPETI_REGION    = 'cankaya-mustafa-kemal-mah-odtu-teknokent-bim'
```

### Çalıştırma

- Uygulamayı `ruby joker.rb` komutu ile çalıştırabilirsiniz.

- Eğer çevre değişkenlerini uygulamayı çalıştırırken vermek isterseniz şu şekilde yazabilirsiniz:
`YEMEKSEPETI_EMAIL='email@email.com' YEMEKSEPETI_PASSWORD='password1'
YEMEKSEPETI_CITY='ankara' YEMEKSEPETI_REGION='cankaya-mustafa-kemal-mah-odtu-teknokent-bim' ruby joker.rb`
