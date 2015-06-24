clc
clear
//Input data
d=0.2//Length of iron rod in m
A=0.685*10^-4//Area of cross-section in m^2
T1=100+273//Temperature of the hot end in K
T2=30+273//Temperature of the other end in K
K=62//Thermal conductivity of iron in W/m.K
t=10*60//Time in sec

//Calculations
Q=(K*A*(T1-T2)*t)/d//Quantity of heat conducted in J

//Output
printf('The iron rod conducts %3.2f J of energy in 10 minutes',Q)
