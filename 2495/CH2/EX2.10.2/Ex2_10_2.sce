clear
clc
rho=1.59;//density of CCl4 in kg/dm^3
M1=154;//molar mass of CCl4 in kg/mol
DelTb=0.60;//boiling point of CCl4 in K
Kb=5.03;//in Kkg/mol
m=DelTb/Kb;
m2=3;//amount added to CCl4 in gm
m1=100;//amount of CCl4 in gm
M2=(m2*10^-3)/(m1*10^-3*m);//molar mass of substance
printf('M2=%.3f kg/mol',M2)
Kf=31.8;//freezing point depression in Kkg/mol
DelTf=Kf*m
printf('\nDelTf=%.3f K',DelTf)
P=(m2*10^-3/M2)/(((m2*10^-3)/M2)+((m1*10^-3)/(M1*10^-3)));//relative vapour pressure DelP/P1
printf('\nP=%.5f',P)
V1m=m1*10^-3/(rho);//volume in dm^3
R=0.082;//in dm^3atm/Kmol
T=298;//Temperature in K
P0=((m2/250)*R*T)/V1m;//osmotic pressure in atm
printf('\nP0=%.3f atm',P0)

//There are some errors in the solution given in textbook
//page 71

