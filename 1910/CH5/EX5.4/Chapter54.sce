// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Introduction to heat transfer by S.K.Som, Chapter 5, Example 4")
//Air at atmospheric pressure is required to flow over a circuit board to cool the electronics element mounted on it.
//Chip has length (L)=3mm and width(B)=3mm located x=0.1m from the leading edge
L=0.003;//in metre
B=0.003;//in metre
x=0.1;
//The Nusselt no. is given by Nux=0.06*Rex^0.85*Pr^0.33
//The chip has to dissipate E=50mW of energy while its surface temprature has to be kept below temprature,Ts=45°C and free strem Temptrature of air is Tinf=25°C
Ts=45;
Tinf=25;
E=50*10^-3;//in watt
//For air ,density(rho=1.2kg/m^3),viscosity(mu=1.8*10^5kg/(m*s)),conductivity(k=0.03W/(m*K)) and specific heat(cp=1000J/(kg*K))
rho=1.2;
mu=1.8*10^5;
k=0.03;
cp=1000;
//Let the minimum flow velocity be U.
//The local heat transfer coefficient hx where the chip is mounted is determined as hx=(k/x)*0.06*(rho*U*x/mu)^0.85*(mu*cp/k)^0.33
disp("The local heat transfer coefficient hx is hx=27.063*U^0.85")
//from an enrgy balance we can write 27.063*U^0.85*L*B*(Ts-Tinf)=E
disp("The minimum flow velocity in m/s is")
U=[E/(27.063*L*B*(Ts-Tinf))]^(1/0.85)













