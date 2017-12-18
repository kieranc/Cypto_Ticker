function getbtcrate()
http.get("https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=EUR", nil, function(code, databtc)
    if (code < 0) then
      print("HTTP request failed")
    else
      --print(code, databtc)
      -- Decode JSON data
      t = cjson.decode(databtc)
      -- Extract BTC/EUR price from decoded JSON
      btcrate = string.format("%d", t[1]["price_eur"]+0.5);
      --print(btcrate)
      btcchange = "24h " .. t[1]["percent_change_24h"] .. "% 7d " .. t[1]["percent_change_7d"] .. "%"
      getxmrrate()
      end
  end)
end

function getxmrrate()
http.get("https://api.coinmarketcap.com/v1/ticker/monero/?convert=EUR", nil, function(code, dataxmr)
    if (code < 0) then
      print("HTTP request failed")
    else
      --print(code, data)
      -- Decode JSON data
      m = cjson.decode(dataxmr)
      -- Extract XMR/EUR price from decoded JSON
      xmrrate = string.format("%d", m[1]["price_eur"]+0.5);
      --print(xmrrate)
      xmrchange = "24h " .. m[1]["percent_change_24h"] .. "% 7d " .. m[1]["percent_change_7d"] .. "%"
      dofile('update_display.lua')
      end
  end)
end

node.task.post(getbtcrate);
