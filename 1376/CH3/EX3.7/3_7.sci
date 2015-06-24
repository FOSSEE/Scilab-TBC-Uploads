//3.7
clc;
V=20;
A=20*10^-3;
Rv=10*10^3*20;
Rx=(V/(A-(V/Rv)))/1000;
printf("The resistance=%.2f Kohm",Rx)
E_total=2.5+2.5;
printf("Maximum possible error=%.0f percent",E_total)
