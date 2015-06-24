//Part A Chapter 4 Example 5
clc;
clear;
close;
m=5;//kg
p1=1;//MPa
V1=0.5;//m^3
p2=0.5;//MPa
//u=1.8*p*v+85;//kJ/kg
n=1.3;//constant
//p1*V1^n=p2*V2^n
V2=(p1/p2*V1^n)^(1/n);//m^3
W=(p2*V2-p1*V1)*10^3/(1-n);//kJ
delU=(p2*V2-p1*V1)*10^3;//kJ
delTheta=delU+W;//kJ
disp("Heat Interaction = "+string(delTheta)+" kJ");
disp("Work Interaction = "+string(W)+" kJ");
disp("Change in Internal Energy = "+string(delU)+" kJ");
