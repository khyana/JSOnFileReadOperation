require 'open-uri'
require 'json'
require 'net/http'
require 'rubyXL'

class FunctionLib

  def find_even(arrVar)
    idx = 0
    while idx < arrVar.length
      if arrVar[idx] % 2 == 0
        return arrVar[idx]
      end
      idx += 1
    end
  end

  def find_odd(arrVar)
    idx = 0
    while idx < arrVar.length
      if arrVar[idx] % 2 != 0
        return arrVar[idx]
      end
      idx += 1
    end
  end

  def getNamefromJson()
    result = Net::HTTP.get(URI("https://swapi.co/api/people/1/")).split("}")
    result.each do |res|
      break if res == "\n"
      res << "}"
      to_crawl = JSON.parse(res)
      strName = to_crawl["name"]
      return strName
    end
  end
end