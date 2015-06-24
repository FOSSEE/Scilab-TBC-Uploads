// Example 9.6.1  page 9.19

clc;
clear;

L=10;
ts=10;
tD=8;
tmod=L*6;
tt=L*2;

Tsys=1.1*sqrt(ts^2+tmod^2+tt^2+tD^2);
Bt=0.7/Tsys;
Bt=Bt*10^3;
printf("Maximum bit rate for link using NRZ data format is %.2f Mbits/sec.",Bt);
printf("\nNOTE - calculation error in the book");

//calculation error in the book
//answer given in the book is 10.3mbits/sec.(incorrect)

