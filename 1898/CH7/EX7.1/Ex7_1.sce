clear all; clc;

disp("Scilab Code Ex 7.1 : ")

//Given:
V = 3; //kN
h = 125; //mm
b = 100; //mm
y_top = 50; //mm
x_right = 37.5; //mm

//Part (a):

//Section Properties:
I = (b*h^3)/12;
y_dash_1 = ((h-y_top)-(h/2));
A = y_top*b;
Q = (y_dash_1+(y_top/2))*A;

//Shear Stress:
tou_p = (V*Q)/(I*b); //tou = VQ/It
tou_p = tou_p*10^3;

//Part (b):

//Section Properties:
y_dash_2 = (y_dash_1+(y_top));
a_dash= b*y_dash_2;
Q_dash =(y_dash_2*a_dash)/2;

//Shear Stress:
tou_max = (V*Q_dash)/(I*b);
tou_max = tou_max*10^3;

//Display:

printf("\n\nThe shear stress in the beam at point P    = %1.3f MPa',tou_p);
printf('\nThe maximum shear stress in the beam       = %1.3f MPa',tou_max);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
