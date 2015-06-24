//example 11
// electric heating of air in house
clear
clc
T1=290 //Initial temp. of air in K
P1=100 //Initial pressure of air in kPa
R=0.287 //Gas constant in KPa*m^3/kg-K
V1=R*T1/P1 //Initial specific volume of air in m^3/kg
v1=150 //volume flow rate in m^3/min
m=v1/(V1*60) //mass flow rate in kg/s
win=15 //Power of Electric heating system in kJ/s
qout=0.2 //heat lost from air to surroundings in kJ/s
cp=1.005 //heat capacity in kJ/kg-C
T2=(win-qout)/(m*cp)+(T1-273) //Exit temp. of air in C
printf("\n Hence,the exit temp. of air is = %.1f C. \n",T2);