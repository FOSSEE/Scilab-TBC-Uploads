//Part A Chapter 6 Example 11
clc;
clear;
close;
m=2;//kg
V1=1;//m^3
V2=10;//m^3
R=287;//consant
deltaS_air=m*R*log(V2/V1);//J/K
disp("Entropy change of air = "+string(deltaS_air)+" J/K");
deltaS_surr=0;//for free expansion
disp("Entropy change of surrounding = "+string(deltaS_surr));
deltaS_uni=deltaS_air+deltaS_surr;//J/K
disp("Entropy change of universe = "+string(deltaS_uni)+" J/K");
