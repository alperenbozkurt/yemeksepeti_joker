from selenium import webdriver
import time
import sys


driver_path = r"python\chromedriver.exe"
browser = webdriver.Chrome(executable_path=driver_path)

#email@email.com
yemeksepeti_email = sys.argv[1]
#password1
yemeksepeti_password = sys.argv[2]
#elazig
city =  sys.argv[3]
#firat-universitesi-merkez-kampus
region = sys.argv[4]

browser.get('https://www.yemeksepeti.com/' + city + '/')

element = browser.find_element("name", "UserName")
element.send_keys(yemeksepeti_email)

element = browser.find_element("name", "Password")
element.send_keys(yemeksepeti_password)

element = browser.find_element("id", "ys-fastlogin-button")
element.click()

time.sleep(3)

while(True):
    try:
        joker = ""
        browser.get('https://www.yemeksepeti.com/' + city + '/' + region)
        time.sleep(4)
        joker = browser.find_element_by_class_name("jokerLogo")
        a=5
        print("JOKER BULUNDU!!")
        print("Kalan Süre => "+browser.find_element_by_class_name("countdown").text)
        break
    except:
        continue
