//example 9
//determining amount of heat transfer
clear
clc
P=150 //pressure of nitrogen in cylinder in kPa
V=0.1 //initial volume of cylinder in m^3
T1=25 //initial temperature of nitrogen in celsius
T2=150 //final tempareture of nitrogen in celsius
R=0.2968 //in kJ/kg-K
m=P*V/(R*(T1+273)) //mass of nitrogen in kg
Cv=0.745 //constant volume specific heat for nitrogen in kJ/kg-K
W=-20 //work done on nitrogen gas in kJ
Q=m*Cv*(T2-T1)+W //heat transfer during the process in kJ
printf("\n hence,the heat transfer for the above process is Q=%.1f kJ. \n", Q)