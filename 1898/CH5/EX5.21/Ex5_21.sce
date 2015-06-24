clear all; clc;

disp("Scilab Code Ex 5.21 : ")

//Given:
l = 1.5; //m
G = 42*10^3; //GPa
co = 50; //mm
ci = 25;//mm
shear_y = 84; //N/mm^2
strain_y = 0.002; //rad

//Plastic Torque:
T_p = ((2*%pi)*(co^3 - ci^3)*shear_y)/3;
phi_p = (strain_y*l*10^3)/ci;

J = (%pi/2)*(co^4 - ci^4);
shear_r = (T_p*co)/J;
shear_i = (shear_r*ci)/(co);// shear = Tc/J

G = shear_y/strain_y; 

phi_dash = (T_p*l*10^3)/(J*G); //phi = TpL/JG;

phi = phi_p - phi_dash;
T_p = T_p/10^6;

//Display:


printf('\n\nThe plastic torque Tp                                =  %1.2f x 10^6 Nmm',T_p);
printf('\nThe permanent twist of the tube if Tp is removed     = %1.5f rad',phi);


//----------------------------------------------------------------END------------------------------------------------------------------------
