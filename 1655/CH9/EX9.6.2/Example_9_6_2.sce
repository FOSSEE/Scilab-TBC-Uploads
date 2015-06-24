// Example 9.6.2  page 9.20

clc;
clear;

L=8;
ts=8;
tD=6;
tmod=L*1;
tt=L*5;

Tsys=sqrt(ts^2+tmod^2+tt^2+tD^2);
Bt=0.7/Tsys;
Bt=Bt*10^3;
printf("\nMaximum bit rate for link using NRZ data format is %.2f Mbits/sec.\nMaximum bit rate for link using RZ data format is %.2f Mbits/sec.",Bt,Bt/2);
