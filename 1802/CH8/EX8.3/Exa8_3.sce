//Exa 8.3
clc;
clear;
close;
//given data
V=33;//in KV
d=1;//in cm
D=4;//in cm
//Part (a) :
gmax=2*V/(d*log(D/d));//in KV/cm
disp(gmax,"Maximum Stress in KV/cm");
//Part (b) :
gmin=2*V/(D*log(D/d));//in KV/cm
disp(round(gmin),"Minimum Stress in KV/cm");