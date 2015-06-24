
clear all; clc;

disp("Scilab Code Ex 9.1 : ")

//Given:
tou = 25; //MPa
sigma1 = 50; //MPa
sigma2 = 80; //MPa
phi = 30*(%pi/180);

// Calculations:
sigma_x1 = (sigma1*cos(phi)*cos(phi))- (tou*cos(phi)*sin(phi)) - (sigma2*sin(phi)*sin(phi))- (tou*sin(phi)*cos(phi));
tou1 = (sigma1*cos(phi)*sin(phi))+ (tou*cos(phi)*cos(phi)) + (sigma2*sin(phi)*cos(phi))- (tou*sin(phi)*sin(phi));
sigma_x2 = (tou*cos(phi)*sin(phi))- (sigma2*cos(phi)*cos(phi)) + (tou*sin(phi)*cos(phi))+ (sigma1*sin(phi)*sin(phi));
tou2 = (tou*cos(phi)*cos(phi))+ (sigma2*cos(phi)*sin(phi)) - (tou*sin(phi)*sin(phi))+ (sigma1*sin(phi)*cos(phi));

//Display:

printf("\n\nThe normal stress component in the x diection is     = %1.2f MPa',sigma_x1);
printf("\n  The shear stress component in the x diection is    = %1.1f MPa',tou1);
printf("\n  The normal stress component in the y diection is   = %1.1f MPa',sigma_x2);
printf("\n  The shear stress component in the y diection is    = %1.1f MPa',tou2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------

