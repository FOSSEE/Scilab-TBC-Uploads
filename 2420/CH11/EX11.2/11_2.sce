clc
clear
//Initialization of variables
P1=100 //psia
T1=400 //F
T2=70 //F
//calculations
disp("From mollier charts,")
h1=1227.6 //Btu/lb
h2=298.4 //Btu/lb
h3=279.9 //Btu/lb
h4=38.04 //Btu/lb
m1=(h3-h4)/(h1-h2)
//results
printf("Mass of steam required = %.2f lb steam per lb water",m1)
