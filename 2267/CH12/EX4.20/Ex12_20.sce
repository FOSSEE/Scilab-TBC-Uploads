//Part B Chapter 4 Example 20
clc;
clear;
close;
tau=82;//N/mm^2
M=3.5/1000;//Nm
T=4.5/1000;//Nm
DoBYDi=2;
Do=(16*sqrt(M^2+T^2)/%pi/tau*16/15)^(1/3);//mm
Di=Do/DoBYDi;//mm
disp("Outer diameter is "+string(Do*1000)+" m.");
disp("Inner diameter is "+string(Di*1000)+" m.");
