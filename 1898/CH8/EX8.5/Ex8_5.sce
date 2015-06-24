clear all; clc;

disp("Scilab Code Ex 8.5 : ")

//Given:
r = 0.75*10; //mm
f_x =500;//N
f_y =800;//N
l1 = 8*10; //mm
l2 = 10*10; //mm
l3 = 14*10; //mm

//Stress Components:

//Normal Force:
A1 = (%pi*r^2);
sigma1 = f_x/A1; //stress = P/A

//Shear Force:
y_bar = (4*r)/(3*%pi);
A2 = A1/2;
Q = y_bar*A2; //Q = yA
V = f_y;
I = (1/4)*(%pi*r^4);
t = 2*r;
tou_a = (V*Q)/(I*t); //Shear = VQ/It

//Bending Moment:
M_y = f_x*l3;
c = r;
sigma_A = (M_y*c)/I; 

//Torsional Moment:
T = f_y*l3;
J = (0.5*%pi*r^4); 
tou_A = (T*c)/J;

//Resultant:
res_normal= sigma1+sigma_A;
res_shear = tou_a+tou_A;

//Display:

printf('\n\nThe stress due to normal force at A         = %1.2f MPa',sigma1);
printf('\nThe stress due to shear force at A          = %1.2f MPa',tou_a);
printf('\nThe stress due to bending moment at A       = %1.2f MPa',sigma_A);
printf('\nThe stress due to torsional moment at A     = %1.2f MPa',tou_A);
printf('\nThe resultant normal stress component at A  = %1.2f MPa',res_normal);
printf('\nThe resultant shear stress component at A   = %1.2f MPa',res_shear);

//------------------------------------------------------------------------END------------------------------------------------------------------------------
