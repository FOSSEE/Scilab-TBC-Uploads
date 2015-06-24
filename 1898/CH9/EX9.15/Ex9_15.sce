clear all; clc;

disp("Scilab Code Ex 9.15 : ")

//Given:
sigma_max = 32; //MPa
sigma_min = 0; //MPa
sigma_int = 16; //MPa

tou_max = (sigma_max - sigma_min)/2 ; //MPa
sigma_avg = (sigma_max + sigma_min)/2 ; //MPa

tou_in_plane = (sigma_max - sigma_int)/2;
sigma_avg2 = sigma_avg + (tou_in_plane);

//Display:

printf('\n\nThe maximum absolute shear stress   = %1.2f  MPa',tou_max);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------


