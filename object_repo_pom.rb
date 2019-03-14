require 'rubygems'

require 'selenium-webdriver'

class ObjectRepoPom

  def initialize(url)
    Selenium::WebDriver::Chrome.driver_path="C:/SeleniumDrivers/chromedriver.exe"
    @driver=Selenium::WebDriver.for :chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
    @driver.manage.timeouts.implicit_wait = 10
  end
  def first_name
    return @driver.find_element(:name,'first_name')
  end
  def last_name
    return @driver.find_element(:name,'last_name')
  end
  def email
    return @driver.find_element(:name,'email')
  end
  def phone
    return @driver.find_element(:name,'phone')
  end
  def address
    return @driver.find_element(:name,'address')
  end
  def city
    return @driver.find_element(:name,'city')
  end
  def state
    return @driver.find_element(:xpath,'//*[@id="contact_form"]/fieldset/div[7]/div/div/select/option[11]')
  end
  def zip
    return @driver.find_element(:name,'zip')
  end
  def website
    return @driver.find_element(:name,'website')
  end
  def hosting
    return @driver.find_element(:xpath,'//*[@id="contact_form"]/fieldset/div[10]/div/div[1]/label/input')
  end
  def comment
    return @driver.find_element(:name,'comment')
  end

  def submit_button
    return @driver.find_element(:xpath,'//*[@id="contact_form"]/fieldset/div[13]/div/button')
  end

  def get_current_url
    return @driver.current_url
  end
  def iWait
    @driver.manage.timeouts.implicit_wait = 20
  end

  def header
    return @driver.find_element(:xpath,'/html/body/div[2]/div/div[2]/h2')
  end

  def close_browser
    @driver.quit
  end

end