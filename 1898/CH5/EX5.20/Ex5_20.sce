clear all; clc;

disp("Scilab Code Ex 5.19 : ")

//Given:
r = 20/1000; //m
l = 1.5; //m
phi = 0.6; //rad
shear_y = 75*10^6; //N/m^2

//Calculations:
max_shear_strain = (phi*r)/(l); //phi = (strain*L)/r
strain_y = 0.0016;

r_y = (r*strain_y)/(max_shear_strain); //by ratios

//T= (%pi*shear_y)*(4c^3 - r_y^3)/6;
c = r;

T = (%pi*shear_y)*(4*c^3 - r_y^3)/6;
T = T/1000;

//Display:

printf('\n\nThe torque needed to twist the shaft by 0.6 rad    = %1.2f kNm',T);

//----------------------------------------------------------------END------------------------------------------------------------------------



