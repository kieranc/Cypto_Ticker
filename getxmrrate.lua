http.get("https://api.coinmarketcap.com/v1/ticker/monero/?convert=EUR", nil, function(code, dataxmr)
    if (code < 0) then
      print("HTTP request failed")
    else
      --print(code, data)
      -- Decode JSON data
      m = cjson.decode(dataxmr)
      -- Extract XMR/EUR price from decoded JSON
      xmrrate = string.format("%.2f", m[1]["price_eur"]);
      print(xmrrate)
      xmrchange = "1h " .. m[1]["percent_change_1h"] .. "% 24h " .. m[1]["percent_change_24h"] .. "%"
      print(xmrchange)
      end
  end)
