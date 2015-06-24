// Exa 5.1
clc;
clear;
close;
// Given data
v1_total = 7;// in m^3/min
v_s1 = 0.35;// in m^3/kg
v_s2 = 0.12;// in m^3/kg
p1 = 1;// in bar
p1 = p1 * 10^5;// in N/m^2
p2 = 6;// in bar
p2 = p2 * 10^5;// in N/m^2
D1 = 110;// in mm
D1 = D1 * 10^-3;// in m
D2 = 65;// in mm
D2 = D2 * 10^-3;// in m
Af1 = %pi/4*D1^2;// in m^2
Af2 = %pi/4*D2^2;// in m^2
// v1_total = m1 * v_s1
m1 = v1_total / v_s1;//in kg/min
disp(m1,"The mass flow rate of air in kg/min is :");
m2 = m1;// in kg/min
v2_total = m2 * v_s2;// in m^3/min
del_W_flow = (p2 * v2_total) - (p1 * v1_total);// in J/min
disp(del_W_flow*10^-3,"The change in the work flow in kJ/min is : ");
v_f1 = v1_total/Af1;// in m/min
v_f2 = v2_total /Af2;//in m/min
del_v = v_f2 - v_f1;// in m/min
disp(del_v,"Change in velocity of the air flow in m/min is :");  


