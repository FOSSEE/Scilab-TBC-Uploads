clc;
clear;
D=4;//in
l=20;//ft
n=4;//number of 90 degree elbows
h=0.2;//in
T=100;//degree F 
//energy equation between the inside of the dryer and the exit of the vent pipe
p1=(h/12)*62.4;//lb/(ft^2)
KLentrance=0.5;
KLelbow=1.5;
sw=0.0709;//lb/(ft^3)
f=0.022;//assumption
//hence,
V=((p1/sw)*2*32.2/(1+(f*l/(D/12))+KLentrance+(n*KLelbow)))^0.5;//ft/sec
Q=V*(%pi*((D/12)^2)/4);//(ft^3)/sec
disp("(ft^3)/sec",Q,"The flowrate=")

