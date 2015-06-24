//clear//
clear;
clc;

//Example 19.3
//Given
xF = [0.33,0.37,0.30]'; //[mole fraction] xF(1) = n-hexane, xF(2) = n-heptane, and xF(3) = n-octane
P = 1.2; //[atm]
f = 0.60;
xD_hex = 0.99; //[mole fraction]
xB_hex = [0.01]; //[mole fraction]
K(1) = 2.68/P;
K(2) = 1.21/P;
K(3) = 0.554/P;
//Solution
//The n-hexane is the light key(LK), the n-hepane is the heavy key(HK), and the 
//n-octane is a heavy nonkey(HNK)
//Aplying mass balance and assuming no n-octane and 0.99 mole fraction n-hexane in the 
//distillate.
//Basis:
F = 100; //[mol/h]
//B+D = 100;
//For hexane,
//F*xF = D*xD+B*xB
//from the above two equaiton
A_BD = [1,1;xD_hex xB_hex];
B_BD = [F;F*xF(1)];
//A_BD*x_BD = B_BD
x_BD = inv(A_BD)*B_BD;
D = x_BD(1);
B = x_BD(2);
xD = [0.99,0.01,0.0]';
xB = [0.01,0.544,0.446]';
comp_D = xD.*D;
comp_B = xB.*B;

disp('mol/h',comp_D(3),'n-octane','mol/h',comp_D(2),'n-heptane','mol/h',comp_D(1),'n-hexane','The composition of the overhead  product is');
disp('mol/h',comp_B(3),'n-octane','mol/h',comp_B(2),'n-heptane','mol/h',comp_B(1),'n-hexane','The composition of the bottom product is');

//To find out minimum number of plates, using Eq.(19.13)[Fenske Equation]
//using relative volativity of the light key to the heavy key, which is the
//ratio of the K factors. The K values at the flash temperatue are taken from Example 19.2
alpha_LK_HK = K(1)/K(2);
Nmin = log((xD(1)/xD(2))/(xB(1)/xB(2)))/log(alpha_LK_HK)-1;
disp('plus a reboiler',Nmin,'The minimum number of ideal stages is'); 
