clear all; clc;

disp("Scilab Code Ex 7.6 : ")

//Given:
F = 40; //N
s = 9; //cm
h = 5; //cm
t = 0.5; //cm
w = 3; //cm
w_3 = w/3; //cm

//Calculations:

I = (w*h^3)/12 - (2*w_3*(h - 2*t)^3)/12;

//Case 1:

Q1 = ((h-t)/2)*(w*t);
V1 =((F/s)*I)/Q1 ;  //q = VQ/I

//Case2:

Q2 = ((h-t)/2)*(w_3*t);
V2 =((F/s)*I)/Q2 ;  //q = VQ/I

//Display:


printf("\n\nThe largest vertical shear that can be supported in Case 1    = %1.1f N',V1);
printf("\nThe largest vertical shear that can be supported in Case 2    = %1.1f N',V2);

//-------------------------------------------------------------------------END---------------------------------------------------------------------------------------
