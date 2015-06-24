//Part A Chapter 6 Example 10
clc;
clear;
close;
p1=3;//MPa
V1=0.05;//m^3
V2=0.3;//m^3
p2=p1*V1^1.4/V2^1.4;//Mpa
deltaS=0;//for reversible process
deltaH=integrate('(p1*V1^1.4/P)^(1/1.4)','P',p2,p1  );//MJ
disp("Enthalpy change = "+string(deltaH*1000)+" kJ");
disp("Entropy change = "+string(deltaS));
