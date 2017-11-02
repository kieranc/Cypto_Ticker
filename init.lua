wifi.setmode(wifi.STATION)
wifi.sta.config("SSID","password")
firstrun=0
btcrate=0
btcchange=0
xmrrate=0
xmrchange=0
offset=0
counter=0
tmr.delay(5000)
tmr.alarm(0, 55000, 1, function() dofile('getbtcrate.lua') end )
tmr.alarm(1, 65000, 1, function() dofile('getxmrrate.lua') end )
tmr.alarm(2, 10000, 1, function() dofile('update_display.lua') end )
