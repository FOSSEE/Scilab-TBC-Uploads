//Exa 3.12
clc;
clear;
close;
//Given data :
l=6;//in Km
n1=1.5;//unitless
delta=1//in %
c=3*10^8;//speed of light in m/s
//Part (a)
deltaT=l*10^3*n1*(delta/100)/c;//in sec
deltaT=deltaT*10^9;//in ns
disp(deltaT,"Delay difference between the slowest and fastest modes at output in ns : ");
//Part (b)
B=1/(2*deltaT*10^-9);//in bps
B=B*10^-6;//in Mbps
disp(B,"Assuming no intersymbol interference, maximum bit rate in Mbps : ");