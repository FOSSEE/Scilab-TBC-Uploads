clear all; clc;

disp("Scilab Code Ex 1.11 : ")

//Given :
f = 5000; //N
d_rod = 10;//Diameter of steel rod in mm.
l_bc = 20; //Length of side bc in mm.
l_bd = 40; //Length of side bd in mm.
a_rod = (%pi/4)* (d_rod^2); //Area of cross section of the rod in mm^2.
a_strut = l_bc*l_bd ; //Area of strut in mm^2.


//Average shear stress

avg_shear_rod = f/a_rod; //for rod in Mpa
avg_shear_strut = (f/2)/a_strut; //for strut

//Display:

printf('\n\nThe average shear stress for the rod    = %.2f MPa',avg_shear_rod);
printf('\nThe average shear stress for the strut  = %.2f MPa',avg_shear_strut);



//--------------------------------------------------------------END----------------------------------------------------------------------------
