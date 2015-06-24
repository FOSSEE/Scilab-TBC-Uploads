//Ex10_8 Pg-519
clc

A=5000 //voltage gain
Ri=10000 //input resistor in ohm
Ro=100 //load resistor in ohm
Rf=0 //feedback resistor in ohm

Rin=A*Ri/(1+Rf/Ri) //input resistance of buffer circuit
printf("Input resistance of buffer circuit = %.0f*1e7 ohm \n",Rin*1e-7)

Rout=Ro/A*(1+Rf/Ri) //output resistance of buffer circuit
printf(" Output resistance of buffer circuit = %.2f ohm",Rout)
