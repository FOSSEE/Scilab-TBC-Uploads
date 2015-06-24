//Part A Chapter 6 Example 5
clc;
clear;
close;
m=1;//kg
g=9.81;//gravity constant
h=200;//m
T1=27+273;//K
cp=0.393;//kJ/kgK
deltaPE=m*g*h;//J
Q=deltaPE;//J
deltaS_SeaWater=Q/T1;//J/kgK
deltaS_universe=deltaS_SeaWater;//J/kgK(because of same temperature)
disp("Change in entropy of universe = "+string(deltaS_universe)+" J/kgK");
