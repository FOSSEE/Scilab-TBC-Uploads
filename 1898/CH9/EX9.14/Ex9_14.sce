clear all; clc;

disp("Scilab Code Ex 9.14 : ")

//Given:
tou = 40; //kPa
sigma = -20; //kPa

//Principal Stresses:
sigma_avg = sigma/2;
R = sqrt( (-sigma + sigma_avg)^2 + tou^2);
sigma_max = sigma_avg + R  ;
sigma_min = sigma_avg - R  ;

theta = atan(tou/(-sigma+sigma_avg));
theta = theta/2;

//Absolute Maximum Shear Stress:
tou_max = (sigma_max - sigma_min)/2;
sigma_avg = (sigma_max + sigma_min)/2;

//Display:

printf('\n\nThe prinicpal stresses at the point are:');
printf('\n  %1.1f  kPa',sigma_max);
printf('\n %1.1f  kPa',sigma_min);
printf('\nThe absolute maximum shear stress at the point  %1.1f kPa',tou_max);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


