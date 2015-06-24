clear all; clc;

disp("Scilab Code Ex 8.3 : ")

//Given:
ri = 600/1000; //m
t = 12/1000; //m
ro = ri+t;
sp_wt_water = 10; //kN/m^3
sp_wt_steel = 78; //kN/m^3
l_a = 1; //m depth of point A from the top

//Internal Loadings:
v = (%pi*l_a)*(ro^2 - ri^2);
W_st = sp_wt_steel*v;

p = sp_wt_water*l_a; //Pascal's Law

//Stress Components:

//Circumferential Stress:
sigma1 = (p*ri)/t;

//Longitudinal Stress:
A_st = (%pi)*(ro^2 - ri^2);
sigma2 = W_st/A_st;

//Display:


printf("\n\nThe state of stress at A (Circumferential)    = %1.1f kPa',sigma1);
printf('\nThe state of stress at A (Longitudinal)       = %1.1f kPa',sigma2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
