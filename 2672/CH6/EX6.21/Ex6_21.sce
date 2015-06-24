//Example 6_21
clc;
clear;
close;
format('v',5);
//given data : 
IL=0.1;//A
C=40;///micro F
R=40;//ohm
Vrms=40;//V
Gamma=0.0001;//Ripple factor
n=2;//For 2 stage filter
L=1.76/C*(0.472/Gamma)^(1/n);//H
disp(L,"(a) Value of inductance(H) : ");
Vdc=2*sqrt(2)*Vrms/%pi-IL*R;//V
disp(Vdc,"(b) Output Voltage(V) : " );
