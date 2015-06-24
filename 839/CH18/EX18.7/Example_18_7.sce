//clear//
clear;
clc;

//Example 18.7
//Given
xF = 0.40;
P = 1; //[atm]
D = 5800; //[kg/h]
R = 3.5;
LbyV = R/(1+R);
//Solution
//Physical properties of methanol
M = 32;
Tnb = 65; //[C]
rho_v = M*273/(22.4*338); //[kg/^3]
rho_l_0 = 810; //[kg/m^3], At 0C, from Perry, Chemical Engineers' Handbook 
rho_l_20 = 792; //[kg/m^3], At 20C, from Perry, Chemical Engineers' Handbook 
rho_l = 750; //[kg/m^3], At 65C
sigma = 19; //[dyn/cm], from Lange's Handbook of Chemistry
//(a)
//Vapor velocity and column diameter
//Using Fig. 18.28, the abscissa is
abscissa = LbyV*(rho_v/rho_l)^(1/2);
//for 18-in. plate spacing
Kv = 0.29;
//Allowable vapor velocity
uc = Kv*((rho_l-rho_v)/rho_v)^(1/2)*(sigma/20)^(0.2)/(3.2825112); //[ft/s]
//From Eq.(18.71), the F factor is
F = uc*sqrt(rho_v);
disp(F,'the value of F factor is')

