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
tmr.alarm(0, 60000, 1, function() dofile('getrates.lua') end )
