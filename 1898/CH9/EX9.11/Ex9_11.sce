
clear all; clc;

disp("Scilab Code Ex 9.11 : ")

//Given:
sigma_x  = -8; //MPa
sigma_y = 12; //MPa
tou_xy = -6; //Mpa

//Construction of the circle:
sigma_avg = (sigma_x+sigma_y)/2;

R = sqrt( 10^2 + tou_xy^2);

//Stresses on 30 degree element:
phi = atan(6/10);
psi = (%pi/3) - phi;

//On face BD:
sigma_x1 = 2 - (R*cos(psi));
tou_xy1 = (R*sin(psi));

//On face DE:
sigma_x2 = 2 + (R*cos(psi));
tou_xy2 = -(R*sin(psi));

//Display:

printf('\n\nThe normal stress on plane BD inclined at 30 degrees is   = %1.2f  MPa',sigma_x1);
printf('\nThe normal stress on plane DE inclined at 60 degrees is   = %1.1f  MPa',sigma_x2);
printf('\nThe shear stress is                                       = %1.2f  MPa',tou_xy1);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------


