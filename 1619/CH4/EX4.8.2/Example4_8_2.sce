//Example 4.8.2 page 4.39

clc;
clear;

lamda = 850*10^-9;
BER = 1*10^-9;
BT=10*10^6;
h= 6.625*10^-34;
c= 3*10^8;
Ps= 36*h*c*BT/lamda;
Ps=Ps*10^12;///converting in proper format for displaying...
printf("The minimum incidental optical power required id %.2f pW",Ps);
