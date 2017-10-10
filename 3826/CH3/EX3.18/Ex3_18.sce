//Example 3_18 page no:225
clc;
//given
len = 0.3;//in m
wide = 0.15;//in m
thick = 0.025;//in m
temp = 160;//in C
t = 10;//in minutes
frequency = 30//in MHz
spc_heat = 1465;//in Jkg^-1C^-1
weight = 575;//in kgm^-3
permitivity = 5;
power_factor = 0.05;
vol_of_wood = len * wide * thick;
weight_of_wood = vol_of_wood * weight;
heat_req = weight_of_wood * spc_heat * 150;
heat_req = heat_req/(3.6*10^3);//converting to Wh
pow_req = heat_req * 60/t;
disp(pow_req,"the power required is (in W)");
c = (len * wide * permitivity * 1.113 * 10 ^ -10)/(4*%pi * thick);
cap_reactance = 1/ ( 2*%pi* frequency * 10 ^6 * c);
phi = acosd(0.05);
R = cap_reactance * tand(phi);
V= sqrt(290*R);
disp(V,"the voltage across the work is (in V)");
I = V/cap_reactance;
disp(I,"the current in the work is (in A)");
//the result vary with textbook hence capacitive reactance value is greatly rounded off which change result of resistance so voltage vary with textbook

