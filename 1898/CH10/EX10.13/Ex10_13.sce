clear all; clc;

disp("Scilab Code Ex 10.13 : ")

//Given:
T = 400; //Nm
sigma_ult = 150*10^6; //N/m^2

//Calculations:

x = T/(%pi/2);
r_3 = [x/sigma_ult];
r = nthroot(r_3, 3);
r= r*1000; //in mm

//Display:

printf('\n\nThe smallest radius of the solid cast iron shaft     = %1.2fmm ',r);

//--------------------------------------------------------------------------END--------------------------------------------------------------------------------------


