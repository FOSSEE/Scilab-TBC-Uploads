clear all; clc;

disp("Scilab Code Ex 2.2 : ")

//Given:
theta = 0.002; //radians
bc=1; //m
ba = 0.5;//m

//Calculations:

bb_dash = theta*ba;
avg_normal_strain = bb_dash/bc;//m/m

//Display:


printf("\n\nThe average normal strain =%10.3f m/m",avg_normal_strain);

//---------------------------------------END---------------------------------------------------------------------------------------------

