http.get("https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=EUR", nil, function(code, databtc)
    if (code < 0) then
      print("HTTP request failed")
    else
      --print(code, data)
      -- Decode JSON data
      t = cjson.decode(databtc)
      -- Extract BTC/EUR price from decoded JSON
      btcrate = string.format("%.2f", t[1]["price_eur"]);
      print(btcrate)
      btcchange = "1h " .. t[1]["percent_change_1h"] .. "% 24h " .. t[1]["percent_change_24h"] .. "%"
      print(btcchange)
      end
  end)
