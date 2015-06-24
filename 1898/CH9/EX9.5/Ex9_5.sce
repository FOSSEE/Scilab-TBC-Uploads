clear all; clc;

disp("Scilab Code Ex 9.5 : ")

//Given:
sigma_x = -20; //MPa
sigma_y = 90; //MPa
tou_xy = 60; //MPa

//Orientation of Element:
theta_p2 = atan((2*tou_xy)/(sigma_x - sigma_y));
theta_p2 = theta_p2/2;
theta_p1 = (180+2*theta_p2)/2;

//Principal Stresses:

sigma1 = ((sigma_x+sigma_y)/2)+(sqrt(((sigma_x - sigma_y)/2)^2 + tou_xy^2));
sigma2 = ((sigma_x+sigma_y)/2)- sqrt(((sigma_x-sigma_y)/2)^2 + tou_xy^2);
sigma_x2 = ((sigma_x+sigma_y)/2)+ (((sigma_x-sigma_y)/2)*cos(2*theta_p2)) + (tou_xy*sin(2*theta_p2));

//Display:

printf("\n\nThe first principal stress is                       = %1.0f  MPa',sigma1);
printf("\nThe second principal stress is                      = %1.1f  MPa',sigma2);
printf('\nThe normal stress acting on the 23.7 degrees plane  = %1.1f MPa',sigma_x2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


