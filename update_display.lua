function init_i2c_display()
     sda = 1 -- NodeMCU D1
     scl = 2 -- NodeMCU D2
     sla = 0x3c
     i2c.setup(0, sda, scl, i2c.SLOW)
     disp = u8g.ssd1306_128x64_i2c(sla)
end

-- Change the display every 25 updates to reduce burn-in
if (counter == 25) then
    offset = -3
elseif (counter == 26) then
    offset = 3
elseif (counter == 27) then
    counter = 0
    offset = 0
end

function xbm_picture()
     disp:setFont(u8g.font_10x20)
     disp:drawStr( 3+offset, 16, "BTC:")
     disp:drawStr( 46+offset, 16, btcrate)
     disp:drawStr( 3+offset, 48, "XMR:")
     disp:drawStr( 46+offset, 48, xmrrate)
     disp:setFont(u8g.font_6x10)
     disp:drawStr( 3+offset, 28, btcchange)
     disp:drawStr( 3+offset, 60, xmrchange)
     if (offset == 0) then
     disp:drawFrame(0, 0, 128, 32)
     disp:drawFrame(0, 32, 128, 32)
     end
end

function bitmap_test(delay)
      disp:firstPage()
      repeat
           xbm_picture()
      until disp:nextPage() == false
      tmr.wdclr()
end

if (firstrun ~= 1) then
    init_i2c_display()
    firstrun = 1
    end
bitmap_test()
counter= counter + 1;
--print("Display updated")
