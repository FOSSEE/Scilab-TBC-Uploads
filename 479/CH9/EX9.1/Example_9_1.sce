//Chemical Engineering Thermodynamics
//Chapter 9
//Fluid Flow in Pipes and Nozzles
//Example 9.1
clear;
clc;

//Given
R = 848;//gas constant in m Kgf/Kgmole K
M = 29;//molecular weight of air
g = 9.81;
T1 = 90+273;//initial temperature in K
y = 1.4;//gamma = Cp/Cv
W = 800/3600;//Mass rate of air in Kg/sec
P1 = 3.5;//initial pressure in atm
d = 2.5;//diameter of the pipe in cm

//To find out the pressure at the final point
v1 = (R*T1)/(M*P1*1.033*10^4);//specific volume in cubic meter/Kg
u1 = (W*v1)/(%pi*(d^2*(10^-4))/4);//inital velocity in m/sec
//Assume final temperature as
T2 = [300 310];
//Assume specific heat capacity in J/KgK corresponding to the above temperature as
Cp = [2987.56 2983.56];
for i = 1:2
    us(i) = (g*y*R*T2(i)/M)^(1/2);//sonic velocity attained in m/sec
    u2(i) = ((u1^2)-((2*g*Cp(i)/M)*(T2(i)-T1)))^(1/2);//From equation 9.18 & 9.19 (page no 170)
end
if us(i)-u2(i) <= 1 
    u2 = u2(i);
    T2 = T2(i);
else
end
v2 = u2*(%pi/4)*(d^2/10^4)*(1/W);
P2 = (P1*v1*T2)/(T1*v2);
mprintf('The pressure at the final point is %f atm',P2);
//end