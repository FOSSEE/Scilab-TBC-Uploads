//ques5
//calculating heat transfer per kilogram of dry air
clear
clc
//1-inlet state
//2-Exit state
r1=0.80;//realtive humidity at state 1
Pg1=4.246;//saturation pressure of vapour in kPa
P1=105;//net pressure at state 1 in kPa
P2=100;//net pressure at state 2 in kPa
Pv1=r1*Pg1;//partial pressure of vapour in kPa
w1=0.622*Pv1/(P1-Pv1);//humidity ratio at state 1
r2=0.95;//relative humidity at state 2
Pg2=1.7051;//saturation pressure of vapour in kPa
Pv2=r2*Pg2;//partial pressure of vapour in kPa
w2=0.622*Pv2/(P2-Pv2);//humidity ratio at state 2
T1=30;//C
T2=15;//C
Cp=1.004;//specific heat of water vapour in kJ/kg
hv2=2528.9;//enthalpy of vapourisation of vapour in kJ/kg
hv1=2556.3;//enthalpy of vapourisation of vapour in kJ/kg
hl2=62.99;//enthalpy of 
q=Cp*(T2-T1)+w2*hv2-w1*hv1+hl2*(w1-w2);//kJ/kg
printf('Heat transferred per unit mass = %.2f kJ/kg of dry air',q);