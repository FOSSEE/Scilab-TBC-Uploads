clear all; clc;

disp("Scilab Code Ex 9.9 : ")

//Given:
sigma_x = -12; //MPa
sigma_y = 0;
tou_xy = -6; //MPa

//Construction of the circle:
sigma_avg = (sigma_x+sigma_y)/2;
R = sqrt((-sigma_x+sigma_avg)^2 + (tou_xy)^2);

//Principal Stresses:
sigma2 = -R+sigma_avg;//From the Mohr's circle
sigma1 = R+sigma_avg;

theta_p2 = atan((-tou_xy)/(-sigma_x+sigma_avg));
theta_p2 = theta_p2/2*(180/%pi);

//Display:

printf('\n\nThe first principal stress is            = %1.2f  MPa',sigma1);
printf('\nThe second principal stress is           = %1.1f  MPa',sigma2);
printf('\nThe direction of the principal plane is  = %1.1f  degrees',theta_p2);


//----------------------------------------------------------------------END--------------------------------------------------------------------------------




