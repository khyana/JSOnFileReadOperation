require 'open-uri'
require 'json'
require 'net/http'
require 'rubyXL'

require_relative 'object_repo_pom'
require_relative 'function_lib'

class TestCaseOne


  #define new browser
  objFuncLib = FunctionLib.new()

  #get Name from JSON
  strUrl = "https://swapi.co/api/people/1"
  strFullName = objFuncLib.getNamefromJson()
  arrName = strFullName.split(' ')
  FirstName = arrName[0]
  LastName = arrName[1]

  arr1 = [22, 24, 0, 100, 4, 111, 2602, 18]
  value1 = objFuncLib.find_odd(arr1)
  arr2 = [60, 33, 1719, 25, 19, 13, -21]
  value2 = objFuncLib.find_even(arr1)
  value = value1.to_s + value2.to_s

  browser=ObjectRepoPom.new("http://www.seleniumeasy.com/test/input-form-demo.html")

  browser.first_name.send_keys(FirstName)
  browser.last_name.send_keys(LastName)
  browser.email.send_keys("abc@gmail.com")
  browser.phone.send_keys("5656566565")
  browser.address.send_keys("xyz bvf")
  browser.city.send_keys("nothgt")
  browser.state.click
  browser.zip.send_keys("252200")
  strCurrUrl = browser.get_current_url
  browser.website.send_keys(strCurrUrl)
  browser.hosting.click
  browser.comment.send_keys(value)
  browser.submit_button.click
  if browser.header.text == "Input form with validations"
    puts "Test Passed"
  else
    puts "Test Failed"
  end


end