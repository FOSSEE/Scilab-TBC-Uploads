//Chapter 7,Ex7.4,Pg7.15
clc;
B=100
Icbo=4 //current in microamperes
Ib=40 //Current in microamperes
Ic=B*Ib+(B+1)*Icbo
printf("\n Ic=%.1f mA \n",Ic*10^-3)