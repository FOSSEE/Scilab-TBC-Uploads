// Exa 6.2
clc;
clear;
close;
// Given data
T1 = 25;// in °C
T2 = 1;// in °C
T1 = T1 + 273;// in K
T2 = T2 + 273;// in K
HT= 2;// heat transfer across the wall and the roof in MJ/hr
HT= HT*10^6;// in J/hr
Q = HT* (T1-T2);// in J/hr
COP_heat = T1/(T1-T2);
W_net = Q/COP_heat;// in J/hr
disp(W_net*10^-3/3600,"Power rquired for operating the pump in kW");
// Part (b)
T2= 25;// in °C
T2=T2+273;// in K
// COP= T2/(T1-T2)          (i)
// COP= HT*(T1-T2)/W_net        (ii)
// From (i) and (ii)
T1= sqrt(W_net*T2/HT)+T2;// in K
T1= T1-273;// in °C
disp(T1,"The value of T1 in °C is : ")
