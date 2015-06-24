//Ex3_5 Pg-183
clc

disp("(a) Forward-bias")
Av=50 //applied voltage
Jr=5000 //junction resistance
Er=50 //external resistance
cur=Av/(Er+Jr) //current
printf("\n Current = %.1f mA \n",cur*10^3)

disp("(b) Reverse-bias")
cur_rev=Av/(Jr+10^6) //book expression is wrong
printf("\n Current = %.3f*1e-2 mA \n",cur_rev*10^5)
