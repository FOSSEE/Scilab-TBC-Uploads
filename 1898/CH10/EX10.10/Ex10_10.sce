clear all; clc;

disp("Scilab Code Ex 10.10 : ")

//Given:
a = 300; //mm
b = 50; //mm
t = 20; //mm
E_cu = 120*10^3; //MPa
nu_cu = 0.34;// Poisson's ratio

//By inspection:
sigma_x = 800; //MPa
sigma_y = -500; //MPa
tou_xy = 0;
sigma_z = 0;

//By Hooke's Law:
ep_x = (sigma_x/E_cu) - (nu_cu/E_cu)*(sigma_y + sigma_z);
ep_y = (sigma_y/E_cu) - (nu_cu/E_cu)*(sigma_x + sigma_z);
ep_z = (sigma_z/E_cu) - (nu_cu/E_cu)*(sigma_y + sigma_x);

//New lengths:

a_dash = a + ep_x*a;
b_dash = b + ep_y*b;
t_dash = t + ep_z*t;

//Display:

printf('\n\nThe new length     = %1.2fmm ',a_dash);
printf('\nThe new width      = %1.2f mm ',b_dash);
printf('\nThe new thickness  = %1.2f mm ',t_dash);
//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------




