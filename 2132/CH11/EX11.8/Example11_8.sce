//Example 11.8
clc;
clear;
close;
format('v',6);
//Given data :
Cd=0.65;//constant
A=220;//m^2
g=9.81;//constant
l=30/100;//meter
H1=16.8/100;//meter
H2=6.8/100;//meter
T=A/[2/3*Cd*l*sqrt(2*g)]*integrate('h^(-3/2)','h',H2,H1);//sec
disp("Time taken is "+string(floor(T/60))+" minute "+string((T/60-floor(T/60))*60)+" sec.")
