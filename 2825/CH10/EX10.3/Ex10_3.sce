//Ex10_3 Pg-517
clc

R1=10*10^(3) //resistor R1 in ohm
Rf=50*10^(3) //feedback resistor in ohm
Vin=10*10^(-3) //input voltage in V
Ro=5000 //load resistor in ohm

disp("A'' = Vo/Vi = (-1)*Rf/R1*(1+1/A*(1+Rf/R1))^-1 ")
A=5000 
Vo=Vin*(Rf/R1)/(1+1/A*(1+Rf/R1)) //output voltage
printf("\n When gain A=%.0f",A)
printf(" \n Amplified output voltage = %.1f mV \n",Vo*1e3)

A=10000
Vo=Vin*(Rf/R1)/(1+1/A*(1+Rf/R1))
printf("\n When gain A=%.0f",A)
printf(" \n Amplified output voltage = %.2f mV \n",Vo*1e3)

A=5000
Rout=Ro/(1+A*R1/Rf) //load resistance
printf(" \n Ro'' = %.3f ohm \n",Rout)

A=10000
Rout=Ro/(1+A*R1/Rf) //load resistance
printf(" \n Ro'' = %.3f ohm \n",Rout)
