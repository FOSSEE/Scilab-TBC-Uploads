//Exa 3.5
clc;
clear;
close;
//Given data :
Tr=6;//in ns/Km
BitRate=10;//in Mbps
//part (a)
BDP=1/(2*Tr*10^-9);//in bps-Km
BDP=BDP/10^6;//in Mbps-Km
disp(BDP,"Bandwidth Distance Product for the fibre in Mbps-Km : ");
//Part (b)
lmax=BDP/BitRate;//in Km
disp(lmax,"Dispersion limited length of the fibre in Km : ");