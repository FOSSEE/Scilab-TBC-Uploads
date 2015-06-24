//Example 6.18
clc;
clear;
close;
format('v',4);
//Given data :
g=9.81;//constant
A=3.2;//m^2
a=10*10^-4;//m^2
H1=5;//meter
H2=2.5;//meter
Cd=0.6;//Coefficient of discharge
t=2*A*(sqrt(H1)-sqrt(H2))/Cd/a/sqrt(2*g);//sec
disp("Time taken is "+string(floor(t/60))+" minute "+string((t/60-floor(t/60))*60)+" seconds.");
