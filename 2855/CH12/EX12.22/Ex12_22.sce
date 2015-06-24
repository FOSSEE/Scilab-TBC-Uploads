




//Chapter 12
//page no 488
//given
clc;
clear all;
CNR=50;           //in dB
Bch=4*10^6;
m=0.03;
RIN=m^2/2/Bch/10^(CNR/10)
mprintf("\n RIN = %e ",RIN);
//Miscalculated answer in the book
RINdB=10*log10(RIN);
printf("\nRIN in Db is %.2f",RINdB)

