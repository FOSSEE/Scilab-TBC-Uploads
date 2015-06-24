clear all; clc;

disp("Scilab Code Ex 10.6 : ")

//Given:
ep_x = -300;//(*10^-6) Normal Strain
ep_y = -100; //*(10^-6) Normal Strain
gamma_xy = 100; //*(10^-6) Shear Strain
theta = 20; //degrees


//Construction of the circle:
strain_avg = (ep_x+ ep_y)/2;
tou = gamma_xy/2;
R = sqrt((-ep_x + strain_avg)^2 + tou^2);

//Strains on Inclined Element:
theta1 = 2*theta;

phi = atan((tou)/(-ep_x +strain_avg));
phi = phi*(180/%pi);
psi = theta1 - phi;
psi = psi*(%pi/180);

ep_x1 = -(-strain_avg+ R*cos(psi));
gamma_xy1 = -(R*sin(psi))*2;

ep_y1 = -(-strain_avg - R*cos(psi));

//Display:

printf('\n\nThe normal strain in the new x direction       = %1.0f *10^-6 ',ep_x1);
printf('\nThe normal strain in the new y direction       = %1.1f *10^-6 ',ep_y1);
printf('\nThe shear strain in the new xy direction       = %1.0f *10^-6 ',gamma_xy1);
printf('\nThe average strain                             = %1.0f *10^-6 ',strain_avg);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------




