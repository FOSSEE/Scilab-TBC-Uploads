//Ex7_6 Pg-372
clc

Vout=5 //output voltage
Vin=0.5 //input voltage
Ri=10*10^(3) //input resistance in ohm
Ro=10 //output resistance

A=Vout/Vin //voltage gain
printf("Voltage gain =%.0f \n",A)
Pi=Vin^2/Ri //input power
Po=Vout^2/Ro //output power
Pow_gain=10*(log10(Po)-log10(Pi)) //power gain
printf(" Power gain(in decibel) = %.0f dB \n\n",Pow_gain)

disp("When Ri=Ro")
Ri=Ro
A=Vout/Vin //voltage gain
Pi=Vin^2/Ri //input power
Po=Vout^2/Ro //output power
Pow_gain=10*(log10(Po)-log10(Pi)) //power gain 
printf(" Power gain(in decibel) = %.0f dB",Pow_gain)
