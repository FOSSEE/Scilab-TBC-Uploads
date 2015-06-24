clear all; clc;

disp("Scilab Code Ex 3.5 : ")

//Given:
//Refer to the graph of shear stress-strain of titanium alloy.
x_A = 0.008; //rad - x co-ordinate of A
y_A = 360; //MPa - y co-ordinate of A
height = 50;//mm
l = 75; //mm
b = 100; //mm


//Calculations:

//Shear Modulus:
G = y_A/x_A;

//Proportional Limit:
tou_pl = 360; //Mpa Point A

//Ultimate Stresss:
tou_u = 504; //MPa - Max shear stress at B

//Maximum Elastic Displacement:
tanA= x_A;// tan theta is approximated as theta.
d = tanA*height;

//Shear Force:
A = l*b;
V = tou_pl*A;

//Display:


printf("\n\nThe Shear Modulus                = %10.2f MPa",G);
printf("\nThe Proportional Limit           = %10.2f Mpa",tou_pl);
printf("\nThe Ultimate Shear Stress        = %10.2f MPa ",tou_u);
printf("\nThe Maximum Elastic Displacement = %10.2f mm",d);
printf("\nThe Shear Force                  = %10.2f kN ",(V/1000));

//------------------------------------------------------------------END---------------------------------------------------------------------------



