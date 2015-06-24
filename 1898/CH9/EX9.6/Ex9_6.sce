
clear all; clc;

disp("Scilab Code Ex 9.6 : ")

//Given:
sigma_x = -20; //MPa
sigma_y  = 90; //MPa
tou_xy =60; //Mpa

//Orientation of Element:
theta_s2 = atan(-(sigma_x - sigma_y)/(2*tou_xy));
theta_s2 = theta_s2/2;
theta_s1 = %pi + 2*theta_s2;
theta_s1 = theta_s1/2;

//Maximum in plane Shear Stress:
tou_max = (sqrt(((sigma_x - sigma_y)/2)^2 + tou_xy^2));
tou_xy1 = -(sigma_x - sigma_y)*(sin(2*theta_s2))/2 + (tou_xy*cos(2*theta_s2));

//Average Normal Stress:
sigma_avg = (sigma_x+sigma_y)/2;

//Display:

printf("\n\nThe maximum in-plane shear stress is        = %1.1f  MPa',tou_xy1);
printf("\nThe average normal stress is                = %1.0f  MPa',sigma_avg);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------



