//ex6
//Cooling of a Canned Drink by a Thermoelectric Refrigerator
clear
clc
d=1;//density in kg/L
V=0.350;//volume in L
m=d*V;//mass in Kg
c=4.18;//specific heat in kJ/kg.C
T2=20;//Temperature in C
T1=4;//Temperature in C
Qcooling=m*c*(T2-T1);//heat of cooling in kJ

t=30*60;//sec
Qcoolings=Qcooling/t;//rate of cooling in kW
COPr=0.10;
Wins=Qcoolings/COPr;
printf('Power = %.0f W',Wins*1000);

