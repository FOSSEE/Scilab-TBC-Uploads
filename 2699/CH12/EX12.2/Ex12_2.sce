//EX12_2 Pg-12.14
clc
clear
L=40e-6;
C=12e-9;
x=2*%pi*sqrt(L*C);
fc=1/x;//carrier  frequency 
f=5e3;//given audio frequency
fusb=fc+f;//upper side band frequency
flsb=fc-f;//lower side band frequency
BW=fusb-flsb;//required bandwidth 
printf("Therefore upper side band frequency fusb=%.0f Hz \n",fusb)
printf(" Therefore lower side band frequency flsb=%.0f Hz \n",flsb)
printf("\n required bandwidth BW=%.0fHz",BW)
//in the book fc is approximated to 230Khz but the exact answer is 229.72kHz
