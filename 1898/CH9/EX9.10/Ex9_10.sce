clear all; clc;

disp("Scilab Code Ex 9.10 : ")

//Given:
sigma_x = -20; //MPa
sigma_y = 90; //MPa
tou_xy = 60; //MPa

//Construction of the circle:
sigma_avg = (sigma_x+sigma_y)/2;
R = sqrt(((sigma_x-sigma_avg))^2 + (tou_xy)^2);

//Maximum In plane Shear Stress:
tou_max = R;

theta_s1 = atan(-(sigma_x - sigma_avg)/(tou_xy));
theta_s1 = theta_s1/2*(180/%pi);

//Display:

printf('\n\nThe maximum in-plane shear stresses are   = %1.1f  MPa',tou_max);
printf('\n                                          = %1.1f  MPa',sigma_avg);
printf('\nThe orientation of the element is         = %1.1f  degrees',theta_s1);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------

