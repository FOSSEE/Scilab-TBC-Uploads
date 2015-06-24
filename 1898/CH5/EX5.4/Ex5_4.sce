clear all; clc;

disp("Scilab Code Ex 5.4 : ")

//Given:
di = 80; //mm
ri = 40/1000; //m
d0 = 100; //mm
ro = d0/2000; //m
F = 80; //N
l1 = 0.2; //m
l2 = 0.3; //m

//Internal Torque:
T = F*(l1+l2);

//Section Property:
J = (%pi/2)*((ro^4)-(ri^4));

//Shear Stress:
c_o = 0.05;//m
tou_o = (T*c_o)/(J*10^6);

c_i = 0.04; //m
tou_i = (T*c_i)/(J*10^6);

//Display:


printf('\n\nThe shear stress in the inner wall    = %1.3f MPa',tou_i);
printf('\nThe shear stress in the outer wall    = %1.3f MPa',tou_o);


//---------------------------------------------------------------------END-------------------------------------------------------------------------------------------


  
