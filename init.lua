wifi.setmode(wifi.STATION)
station_cfg={}
station_cfg.ssid="YourSSID"
station_cfg.pwd="password"
station_cfg.save=true
wifi.sta.config(station_cfg)
-- Initialize variables
firstrun=0
btcrate=0
btcchange=0
xmrrate=0
xmrchange=0
offset=0
counter=0
-- Run getrates.lua every 60 seconds
tmr.alarm(0, 60000, 1, function() dofile('getrates.lua') end )
-- Run getrates.lua once, 8 seconds after boot.
tmr.alarm(1, 8000, tmr.ALARM_SINGLE, function() dofile('getrates.lua') end )
