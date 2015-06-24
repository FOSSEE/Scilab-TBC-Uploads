clear all; clc;

disp("Scilab Code Ex 5.18 : ")

//Given:
fillet_r = 6; //mm
D = 40/1000; //m
d = 20/1000; //m
T = 30; //Nm
D_d = D/d; 
r_d = fillet_r/d; 
k = 1.3;

//Maximum Shear Stress:
c = D/2;
J = (%pi/2)*(c^4)
max_shear = (k*T*c)/(J*10^6); // tou = K(Tc/J)

//Display:

printf('\n\nThe maximum shear stress in the shaft due to the applied torques    = %1.2f MPa',max_shear);

//----------------------------------------------------------------END------------------------------------------------------------------------
