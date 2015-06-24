//Exa 3.6
clc;
clear;
close;
//Given data :
Tr=0.2;//in us
l=20;//in Km
//part (a)
B=1/(2*Tr*10^-6);//in Hz
B=B/10^6;//in MHz
disp(B,"Maximum possible assuming no intersymbol interference in MHz : ");
//Part (b)
Dispersion=Tr*10^-6/l;//in sec/Km
disp(Dispersion*10^9,"Dispersion in ns/Km : ");
//part (c)
BDP=B*l;//in MHz-Km
disp(BDP,"Band =width Distance product for the fibre in MHz-Km : ");