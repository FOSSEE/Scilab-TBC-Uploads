clear all; clc;


disp("Scilab Code Ex 9.2 : ")

//Given:
phi = -30*(%pi/180);
theta = 60*(%pi/180);
sigma_x = -80; //MPa
sigma_y = 50; //MPa
tou_xy = -25; //MPa

//Plane CD:
sigma_x1 = (sigma_x+sigma_y)/2 + ((sigma_x-sigma_y)*cos(2*phi))/2 + (tou_xy*sin(2*phi)); //Eqn 9.1
tou_xy1 = ((-(sigma_x - sigma_y)*sin(2*phi))/2) + (tou_xy*cos(2*phi)); //Eqn 9.2

//Plane BC:
sigma_x2 = (sigma_x+sigma_y)/2 + ((sigma_x-sigma_y)*cos(2*theta))/2 + (tou_xy*sin(2*theta)); //Eqn 9.1
tou_xy2 = (-(sigma_x - sigma_y)*sin(2*theta))/2 + tou_xy*cos(2*theta); //Eqn 9.2

//Display:

printf('\n\nThe normal stress of plane CD inclined at 30 degrees    = %1.1f MPa',sigma_x1);
printf('\nThe shear stress of plane CD inclined at 30 degrees     = %1.1f MPa',tou_xy1);
printf('\nThe normal stress of plane BC inclined at 60 degrees    = %1.2f MPa',sigma_x2);
printf('\nThe shear stress of plane BC inclined at 60 degrees     = %1.1f MPa',tou_xy2);

//-------------------------------------------------------------------------END---------------------------------------------------------------------------------------
