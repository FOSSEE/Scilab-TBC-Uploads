clear all; clc;

disp("Scilab Code Ex 14.9 : ")

//Given:
W = 6000; //N
h = 50; //mm
E = 210*1000; //N/mm^2
L = 5000; //mm
I = 87.3*10^6; //mm^2

//Calculations:

del_st = (W*L^3)/(48*E*I);
del_max = del_st*(1 + sqrt(1 + 2*(h/del_st)));

c = 252/2;
sigma_max = (12*E*del_max*c)/(L^2);

//Display:

     printf('\n\nThe maximum bending stress in the steel beam   = %1.2f N/mm^2',sigma_max);
    printf('\nThe maximum deflection in the beam             = %1.3f mm',del_max);

//---------------------------------------------------------------------------END------------------------------------------------------------------------------
