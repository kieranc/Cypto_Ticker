# Cypto_Ticker
Uses an ESP8266 to receive cryptocurrency JSON data from coinmarketcap.com and displays it on an OLED display.

Currently only works with NodeMCU firmware version 1.5.4.1-final - HTTPS requests are broken in newer versions.
Needs modules cjson, file, gpio, http, i2c, net, node, tmr, u8g, uart, wifi, tls (SSL). Fonts font\_fub17 and font\_6x10

init.lua sets up wifi, variables, and a timer which runs getrates.lua every minute.

getrates.lua requests the first currency JSON, processes it, then the 2nd currency, then runs update\_display.lua

update\_display.lua initializes the display then displays the data on it. I wasn't happy with the online converter method of generating a bitmap, so instead I've included them as strings (eurosym, btclogo, xmrlogo). I created them by saving the logo as an XBM using GIMP, then opening the XBM with a text editor to extract the string. This should make it pretty simple to add logos for different currencies. £ and $ symbols exist in the fonts so if you want to display those currencies you don't need a bitmap.
update\_display.lua also moves the contents of the screen slightly every 30 minutes, in theory to reduce burn-in, I don't know if it works, or is necessary on a €3 screen, but it's there!

