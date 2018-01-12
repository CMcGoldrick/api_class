require 'unirest'

system 'clear'

response = Unirest.get("https://www.reddit.com/r/programming/.json")



  article = response.body["data"]["children"][0]["data"]["title"]





p article