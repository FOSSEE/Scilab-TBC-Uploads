//Chapter 7,Ex7.6,Pg 7.15
clc;
a=0.9 
Ie=10^-3
Ic=a*Ie //a=Ic/Ie
Ib=Ie-Ic
printf("\n Ib=%.1f mA \n",Ib*10^3)
