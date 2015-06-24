//Part A Chapter 6 Example 2
clc;
clear;
close;
T1=27+273;//K
T2=100+273;//K
T3=400+273;//K
m=5;//kg
cp=4.2;//kJ/kgK
cp2=2260;//kJ/kg
delta_T=100-27;//degree C
Q1=m*cp*delta_T;//kJ/K
delta_S1=Q1/T1//kJ/K
Q2=m*cp2;//kJ/K
delta_S2=Q2/T2//kJ/K
R=8.314/34;//kJ/kgK
//cp_steam=R*(3.5+1.2*T+0.14*T^2)*10^-3;//kJ/kgK
//delta_S3=m*cp_steam/T*dT
delta_S3=integrate('m*R*(3.5/T+1.2+0.14*T)*10^-3','T',T2,T3);//kJ/K
delta_S=delta_S1+delta_S2+delta_S3;//kJ/K
disp("Total entropy change = "+string(delta_S)+" kJ/K");
//Answer in the book is not accurate.
