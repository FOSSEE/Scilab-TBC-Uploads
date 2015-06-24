clear all; clc;

disp("Scilab Code Ex 12.23 : ")

//Given:
d = 12; //mm
E = 210; //GPa
I = 186*10^6; //mm^4
P = 40; //kN
l_bc = 3; //m
l_ab = 4;//m
l = 5; //m

//Compatibility Equation: nuB'' = nuB - nuB'
A = (%pi/4)*(d^2);

nuB1_by_Fbc = (l_bc*1000)/(A*E*1000); //nuB'' = PL/AE
nuB2 = (5*P*1000*(l_ab*1000)^3)/(48*E*1000*I); //nuB = (5PL^3)/(48EI)
nuB2_by_Fbc = ((l*1000)^3)/(3*E*1000*I); //nuB' = (PL^3)/(3EI)

F_bc = (nuB2)/(nuB1_by_Fbc + nuB2_by_Fbc );
F_bc = F_bc/1000; //in kN

//Display:

printf('\n\nThe force in the rod due to loading    = %1.3f kN',F_bc);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------



