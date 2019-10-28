require 'selenium-webdriver'

yemeksepeti_email    = ENV['YEMEKSEPETI_EMAIL']     ||= 'email@email.com'
yemeksepeti_password = ENV['YEMEKSEPETI_PASSWORD']  ||= 'password1'
city                 = ENV['YEMEKSEPETI_CITY']      ||= 'ankara'
region               = ENV['YEMEKSEPETI_REGION']    ||= 'cankaya-mustafa-kemal-mah-odtu-teknokent-bim'

# Chrome Driver Path
Selenium::WebDriver::Chrome.driver_path = './chromedriver'

# Chrome Driver Setting
options = Selenium::WebDriver::Chrome::Options.new()
driver = Selenium::WebDriver.for :chrome, options: options

# Yemeksepeti sayfasına gir
driver.navigate.to 'https://www.yemeksepeti.com/' + city + '/'

# Username alanını doldur
element = driver.find_element(name: 'UserName')
element.send_keys yemeksepeti_email

# Password alanını doldur
element = driver.find_element(name: 'Password')
element.send_keys yemeksepeti_password

# Giriş Yap
element = driver.find_element(id: 'ys-fastlogin-button')
element.click
sleep(3)
# Joker jopup'ı çıkana kadar sayfayı yenile
9999.times do
  driver.navigate.to 'https://www.yemeksepeti.com/' + city + '/'
  driver.navigate.to 'https://www.yemeksepeti.com/' + city + '/' + region
  sleep 4
  joker = ''
  begin
    joker = driver.find_element(class: 'jokerLogo')
  rescue
    joker = nil
  end
  sleep(999999) unless joker.nil?
end
driver.quit
