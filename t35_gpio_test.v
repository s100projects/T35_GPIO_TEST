module t35_gpio_test (clk, pll_LOCKED, pll_LOCKED_out, pll_RSTN, gpio, gpioa, gpiob, gpioc,
                      gpiod, gpioe, gpiof, gpiog, gpioh, gpioi, gpioj, gpiok, gpiol, gpiom,
                      gpion, gpioo, gpiop, gpioq, gpior, gpios, gpiot, gpiou, gpiov, gpiow,
                      gpiox, gpioy, gpioz); 

 input clk, pll_LOCKED;
 output pll_LOCKED_out;
 output pll_RSTN;
 output [7:0]   gpio, gpioa, gpiob, gpioc, gpiod, 
                gpioe, gpiof, gpiog, gpioh, gpioi,
                gpioj, gpiok, gpiol, gpiom, gpion,
                gpioo, gpiop, gpioq, gpior, gpios,
                gpiot, gpiou, gpiov, gpiow, gpiox,
                gpioy, gpioz;
 
 reg [7:0] counter;

   //pll_RSTN net is always "1",  not needed to reset counter as pll_LOCKED does that
   assign pll_RSTN = 1'b1;
   assign pll_LOCKED_out = pll_LOCKED;
   
   always @(posedge clk) 
   begin
        if (!pll_LOCKED) 
            counter <= 8'b11111111;
        else
            if (counter == 8'b11111111)
                counter <= 8'b00000000;
            else
                counter <= counter + 1;
   end
  
   assign gpio =  counter;
   assign gpioa = counter;
   assign gpiob = counter;
   assign gpioc = counter;
   assign gpiod = counter;
   assign gpioe = counter;
   assign gpiof = counter;
   assign gpiog = counter;
   assign gpioh = counter;
   assign gpioi = counter;
   assign gpioj = counter;
   assign gpiok = counter;
   assign gpiol = counter;
   assign gpiom = counter;
   assign gpion = counter;
   assign gpioo = counter;
   assign gpiop = counter;
   assign gpioq = counter;
   assign gpior = counter;
   assign gpios = counter;
   assign gpiot = counter;
   assign gpiou = counter;
   assign gpiov = counter;
   assign gpiow = counter;
   assign gpiox = counter;
   assign gpioy = counter;
   assign gpioz = counter;

endmodule