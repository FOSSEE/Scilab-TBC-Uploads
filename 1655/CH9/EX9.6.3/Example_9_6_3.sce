// Example 9.6.3  page 9.21

clc;
clear;

L=5;
ts=10;
tD=3;
tmod=L*2;
tt=L*9;

Tsys=sqrt(ts^2+tmod^2+tt^2+tD^2);
Bt=0.7/Tsys;
Bt=Bt*10^3;
printf("\nMaximum bit rate for link using NRZ data format is %.1f Mbits/sec.",Bt);
printf("\nThis is equivalent to a 3 dB optical bandwidth of %.1f MHz, hence the desired required bandwidth 6 MHz which will be supported",Bt/2);

