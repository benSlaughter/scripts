require 'net/http'
require 'uri'
require 'json'
require 'csv'
require 'pry'

# Hey future ben, if you are using this again,
# Go to https://www.smythstoys.com/uk/en-gb/video-games-and-tablets/xbox-gaming/xbox-series-x-%7c-s/xbox-series-x-%7c-s-consoles/xbox-series-x-1tb-console/p/192012
# Then click change store, and copy the network request for `pointOfServices` as a CURL request
# Then replace the curl request below
# You may be able to get away with only replacing the cookie line!

# I could make this better, but I like copy pasta from chrome dev tools :P
# WARNING the cookies only last about 15 minutes
def send_request
  `curl -c jar.txt -b jar.txt 'https://www.smythstoys.com/uk/en-gb/store-pickup/192012/pointOfServices' \
  -H 'authority: www.smythstoys.com' \
  -H 'sec-ch-ua: " Not A;Brand";v="99", "Chromium";v="90", "Google Chrome";v="90"' \
  -H 'accept: */*' \
  -H 'x-requested-with: XMLHttpRequest' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36' \
  -H 'content-type: application/x-www-form-urlencoded; charset=UTF-8' \
  -H 'origin: https://www.smythstoys.com' \
  -H 'sec-fetch-site: same-origin' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-dest: empty' \
  -H 'referer: https://www.smythstoys.com/uk/en-gb/video-games-and-tablets/xbox-gaming/xbox-series-x-%7c-s/xbox-series-x-%7c-s-consoles/xbox-series-x-1tb-console/p/192012' \
  -H 'accept-language: en-US,en;q=0.9' \
  -H 'cookie: incap_ses_7227_2483049=nGjRASrf5F/jKmyeZnZLZIWJv2AAAAAA0m+wxA7NN1Uj7Uh9rvdS0w==; _ga_FHGLQ54MHW=GS1.1.1623163695.4.1.1623165317.0; JSESSIONID=312EF3F5E1FE218C9EECD78F66211130.app7; recentlyBrowsedProducts=192012; uid=uk; GCLB=CJ6A-Y2x9o-AEg; nlbi_2483049=FzDROUEejSSr2idpza4azwAAAAByEQ0CBO8MvkAPOIe27rza; smyths_gtm_GTM=false; smyths_gtm_GOOGLEOPTIMIZE=false; smyths_gtm_CYBERSOURCE=false; smyths_gtm_KLARNA=false; smyths_gtm_HOTJAR=false; smyths_gtm_RAKUTEN=false; smyths_gtm_GA=false; smyths_gtm_GOOGLEADWORDS=false; smyths_gtm_FACEBOOK=false; smyths_gtm_BAZAARVOICE=false; smyths_gtm_FLIXMEDIA=false; smyths_gtm_WEBCOLLAGE=false; smyths_gtm_FRESHCHAT=false; smyths_gtm_YOUTUBE=false; smyths_gtm_SYNDIGO=false; smyths_gtm_SITEVISIT=false; smyths_gtm_LOCATION=false; uk-anonymous-consents=%5B%7B%22templateCode%22%3A%22Analytics%22%2C%22templateVersion%22%3A0%2C%22consentState%22%3Anull%7D%2C%7B%22templateCode%22%3A%22Essential%22%2C%22templateVersion%22%3A0%2C%22consentState%22%3A%22GIVEN%22%7D%2C%7B%22templateCode%22%3A%22Functional%22%2C%22templateVersion%22%3A0%2C%22consentState%22%3Anull%7D%2C%7B%22templateCode%22%3A%22Targeting%22%2C%22templateVersion%22%3A0%2C%22consentState%22%3Anull%7D%5D; incap_sh_2483049=U5+/YAAAAACy0XQLDAAI077+hQYQyb7+hQYtlRhpFDQWcrCG43KPOeCT; visid_incap_2483049=MYCd7REKQoGu+tZ8FRG6vYWJv2AAAAAAQkIPAAAAAACAMMucAVFtH5ajCGuEyg5uny1gB9c3CKjA; _hjOptOut=true; nlbi_2483049_2147483646=lc7JNlxtCimkKeegza4azwAAAAAZL98JeCfq7TpOlLiML6xc; locationCookie=_; reese84=3:VKHjsVDwTnl5miLQggXlhg==:v/TkZI0YiOuDmRm1rgrTsf4FuqP04CSw0IV1am0Z/E9r4uhud3EAVABjBIAwScjYC6kyCpBvM6J4jF7l2PThGrOmB74xB47RQj6EhnnpwXvMMgSjmOWd1v0P+EEieN+mjeC/3D6rWvOgO2rQd92fdgvlv6CngPnCdwD5dMPqsoY5igh8KYS7M/kjg1LtY0e1hJFA3hRILycjtd5fSZRDwQFkYVsqn06xHIQIt2kU0Na9RP+cjoM9JgS7oXq8aDDEvFt7mw4MJUEpwzTBJds7aKLdabxM6dHceP6QQ7sg7yRzEYDlf/0Hxms7CZ7V+MvvTcwZIb1lysJ7zq2rMs2CubK88//CNQsLeUubfOI7Bg2Z1CwF2dVLoRYOIFs0EwZPzwmTP4VPSbEr8wgEZbtO0hU9zFXj00jClmzEZdP5w35gp//adtgxVmhR/fqpS1LT:2Rs/V/fr3gS8YhC6gKDhcTHYx27mV/UDGSM8Z4/IzIA=' \
  --data-raw 'locationQuery=West+Sussex%2C+United+Kingdom&cartPage=false&entryNumber=0&latitude=50.833027&longitude=-0.315086&searchThroughGeoPointFirst=true&xaaLandingStores=false&CSRFToken=d64c0272-f9c1-4c49-93f8-9c819a447d73' \
  --compressed`
end

# Convert JSON dump to CSV dump file
# Written to work not look pretty!
def convert
  file = File.read('./dump.json')[0...-2]
  data_hash = JSON.parse("#{file}]")
  correct_data = {}

  data_hash.each do |req|
    req.each do |time, data|
      correct_data[time] ||= {}
      data["data"].each do |item|
        correct_data[time][item["displayName"]] = item["stockLevel"]
      end
    end
  end

  csv = []
  csv << ["Time"] + correct_data.first.last.keys

  correct_data.each do |t,d|
    line = []
    line << Time.at(t.to_i).to_s

    d.each do |key, value|
      line << value.to_i
    end

    csv << line
  end

  CSV.open("dump.csv", "wb") do |f|
    csv.each { |row| f << row }
  end
end

begin
  # AVERT YOUR EYES!!!
  while true
    body = JSON.parse(send_request)
    has_stock = body["data"].select { |item| item["stockLevelStatusCode"] == "inStock" }
    crawley = body["data"].detect { |item| item["displayName"] == "Crawley" }
    slough = body["data"].detect { |item| item["displayName"] == "Slough" }

    puts "\n=============================================================="

    # Watch crawley and slough locations!
    if crawley["stockLevelStatusCode"] == "inStock"
      puts "Crawley HAS STOCK!!!"
      print "\a"
      print "\a"
      print "\a"
      print "\a"
      print "\a"
      break
    elsif slough["stockLevelStatusCode"] == "inStock"
      puts "Slough HAS STOCK!!!"
      print "\a"
      print "\a"
      print "\a"
      print "\a"
      print "\a"
      break
    else
      puts "#{has_stock.length} stores have stock"
      puts "Nearest: #{has_stock.first["formattedDistance"]}" unless has_stock.length == 0
      has_stock.each do |item|
        print "#{item["displayName"]}, "
      end
    end

    puts "\n-----------------------------------------------------------"

    # Remember when you make a data structure, make sure it's what you want!
    open('dump.json', 'a') { |f|
      f.print '{"'
      f.print Time.now.to_i.to_s
      f.print '":'
      f.print body.to_json
      f.puts '},'
    }

    sleep(300)
  end
rescue JSON::ParserError => e
  # Whoops looks like the cookie expired!
  # 3 pings means replace the cookies
  print "\a"
  print "\a"
  print "\a"
  raise e
end
