clear all; clc;

disp("Scilab Code Ex 5.11 : ")

//Given:
d = 20/1000; //m
r = d/2;
l_bc = 0.2;
l_cd = 1.5;
l_da = 0.3;
T_c = 800; //Nm
T_d = -500; //Nm

//Equilibrium:
//Eqn 1 :     300 = T_a + T_b

//Compatibility:
//Eqn 2:
coeff_Tb = -l_bc;
coeff_Ta = l_cd + l_da;

//Solving Equations simultaneously using matrices:
C = [1 1; coeff_Tb coeff_Ta];
b = [300 ; -750];
T = C\b;

T_b = T(1);
T_a = T(2);

//Display:


printf('\n\nThe reaction at A    = %1.0f Nm',T_a);
printf('\nThe reaction at B    = %1.0f Nm',T_b);

//---------------------------------------------------------------------------------END--------------------------------------------------------------------


