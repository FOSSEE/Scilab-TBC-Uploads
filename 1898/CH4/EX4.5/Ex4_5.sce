clear all; clc;

disp("Scilab Code Ex 4.5 : ")

//Given:
d_ab = 5; //mm
A = (%pi/4)*(d_ab/1000)^2;
gap = 1; //mm
P = 20; //kN
E_st = 200; //GPa
l_ac = 0.4; //m
l_cb = 0.8; //m
l_ab = l_ac+l_cb;

//Calculations:

//Equilibrium:
//  Eqn1: -Fa - Fb +P*10^3 = 0; 

//Compatibility:
delta_ba = gap/1000; //in m

delta = delta_ba*(A*E_st*10^9); //delta_ba* Lac/AE 


//Eqn2: (L/AE)*Fa -(Lb/AE)*Fb = delta_ba

//Solving Equations 1 and 2 by matrices:
coeff_F = [1 1; l_ac  -l_cb];
b =[P*10^3 ; delta];
F = coeff_F\b;

F_a = F(1)/1000;
F_b = F(2)/1000;

//Display:


printf("\n\nThe reaction force at A = %1.1f kN",F_a);
printf("\nThe reaction force at B = %1.2f kN",F_b);

//--------------------------------------------------------------------------------END----------------------------------------------------------------------
