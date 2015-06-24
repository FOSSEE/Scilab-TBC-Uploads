//clear//
clear;
clc;

//Example 22.2
//Given
Dp = 1; //[in.]
vdot = 25000; //[ft^3/h]
T = 68; //[F]
P = 1; //[atm]
ya = 0.02;
Mair = 29;
Mg = 17;
//Solution
//The average molecular weiht of the entering gas 
M = (1-ya)*Mair+ya*Mg;
rho_y = M*492/(359*(460+68)); //[lb/ft^3]
rho_x = 62.3; //[lb/ft^3]
//(a)
//Using Fig.(22.8), from Example 22.1 A = Gx/Gy = 1 and
//Let 
A = 1;
B = A*sqrt(rho_y/rho_x);
//Form Fig 22.8, the superficial vapor velocity at flooding
//is uof*sqrt(rho_y/(rho_x-rho_y))=0.11, therefore
uof = 0.11/sqrt(rho_y/(rho_x-rho_y)); //[m/s]
//The allowable vapor velocity
uo = uof*0.5; //[m/s]
uo = uo*3.28; //[ft/s]
//the corresponding mass velocity
Gy = uo*rho_y; //[lb/ft^2-s]
//The allowable mass velocity in the example was 0.236 lb/ft^2-s.
//The increase by using structured packing is
increase = (Gy/0.236)-1;
disp(increase*100,'The percent increase in mass velocity is');

//(b)
//The pressure drop
delta_P = 20*1.22*(0.5/0.9)^1.8; //[in. H2O]
//This is 1.2 times the pressure drop of 7 in.H2O in the Intolax saddles.
disp('The pressure drop will be greater than Intolax Saddles')
