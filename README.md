# Cypto_Ticker
Uses an ESP8266 to receive cryptocurrency JSON data from coinmarketcap.com and displays it on an OLED display.

The method I've used to fetch multiple currencies isn't great - just using 2 timers and 2 completely separate requests.
Apparently the new NodeMCU firmware supports multiple requests but I can't get a build of it right now, so this seems to work for the time being. The timers are staggered to avoid conflicts.

Watch this space for a cleaner update.
