# Cypto_Ticker
Uses an ESP8266 to receive cryptocurrency JSON data from coinmarketcap.com and displays it on an OLED display.

The method I've used to fetch multiple currencies isn't great - just using 2 timers and 2 completely separate requests.
Apparently the new NodeMCU firmware supports multiple requests but I can't get a build of it right now, so this seems to work for the time being. The timers are staggered to avoid conflicts.

Currently only works with NodeMCU firmware version 1.5.4.1-final - HTTPS requests are broken in newer versions.
Needs modules cjson, file, gpio, http, i2c, net, node, tmr, u8g, uart, wifi, tls (SSL). Fonts font_6x10 and font_10x20

Watch this space for a cleaner update.
