clear all; clc;

disp("Scilab Code Ex 14.10 : ")

//Given:
m = 80*1000; //kg
v = 0.2; //m/s
l_ac = 1.5; //m
E = 200*10^9; //N/m^2
w = 0.2; //m
I = (1/12)*(w^4);
l_ab = 1000; //mm

//Calculations:
del_Amax = sqrt((m*v^2*l_ac^3)/(3*E*I));

P_max = (3*E*I*del_Amax)/(l_ac^3);
theta_A = (P_max*l_ac^2)/(2*E*I);
del_Amax = del_Amax*1000;
del_Bmax = del_Amax + (theta_A*l_ab);


//Display:

    printf('\n\nThe maximum horizontal displacement of the post at B due to impact   = %1.1f mm',del_Bmax);
    

//---------------------------------------------------------------------------END------------------------------------------------------------------------------


