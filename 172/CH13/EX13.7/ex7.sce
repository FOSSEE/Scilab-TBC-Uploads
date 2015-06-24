//ques7
//calculating humidity ratio and relative humidity 
clear
clc
//1-Inlet state
//2-Exit state
P=100;//net pressure n kPa 
//it is steady state adiabatic process
//water vapour leaving is saturated so Pv2=Pg2
Pg2=2.339;//saturation pressure of vapour in kPa
Pv2=Pg2;//partial pressure of vapour
w2=0.622*Pv2/(P-Pg2);
Cpa=1.004;//specific heat n kJ/kg/K
T2=20;// final temp in C
T1=30;// initial temp in C
Hfg2=2454.1;//specific heat difference at state 2 in kJ/kg
hv1=2556.3;//enthalpy of water vapour at state 1 in kJ/kg
hl2=83.96;//enthalpy of liquid water in kJ/kg
w1=(Cpa*(T2-T1)+w2*Hfg2)/(hv1-hl2);
printf('Relative humidity = %.4f \n',w1);
//also w1=0.622*Pv1/(100-Pv2)
Pv1=100*w1/(0.622+w1);
Pg1=4.246;//saturation pressure at state 1 in kPa
r=Pv1/Pg1;//humidity ratio
printf(' Humidity ratio = %.3f ',r);