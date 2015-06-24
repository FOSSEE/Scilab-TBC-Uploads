clear all; clc;

disp("Scilab Code Ex 5.9 : ")

//Given:
d = 50; //mm
r = d/2;
c = d/2;
l_buried = 600; //mm
G = 40*10^3; //MPa
F = 100; //N
l_handle= 150; //mm
l_ab = 900; //mm

//Internal Torque:
T_ab = F*2*l_handle;
t = T_ab/l_buried;

//Maximum Shear Stress:
J = (%pi/2)*(r^4);
tou_max = (T_ab*c)/(J);

//Angle of Twist:

x0=0;
x1=l_buried;
X=integrate('x','x',x0,x1);

phi_a = ((T_ab*l_ab)+(50*X))/(J*G); 

//Display:



printf('\n\nThe maximum shear stress in the post          = %1.2f N/mm^2',tou_max);
printf('\nThe angle of twist at the top of the post    = %1.5f rad',phi_a);

//---------------------------------------------------------------------------END----------------------------------------------------------------------------

