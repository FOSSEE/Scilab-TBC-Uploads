clear all; clc;

disp("Scilab Code Ex 5.8 : ")

//Given:
T = 45; //N
G = 80; //GPa
d = 20/1000; //m
r = d/2; //m
l_dc = 1.5; //m
l_ab = 2; //m
r1 = 75/1000; //m
r2 = 150/1000; //m

//Internal Torque:
F = T/r2;
T_d_x = F*r1;

//Angle of twist:
J = (%pi/2)*(r^4);
phi_c = (T*l_dc)/(2*J*G*10^9);
phi_b = (phi_c*r1)/r2;

phi_ab = (T*l_ab)/(J*G*10^9);

phi_a = phi_b + phi_ab;

//Display:


printf('\n\nThe angle of twist of end A of shaft AB   = + %1.4f rad',phi_a);

//----------------------------------------------------------------------------END--------------------------------------------------------------------------------
