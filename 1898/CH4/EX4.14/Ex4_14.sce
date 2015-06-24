clear all; clc;

disp("Scilab Code Ex 4.14 : ")

//Given:
P = 80*10^3; //N
yield_stress = 700; //MPa;
E = 200*10^9; //N/mm^2
l1 = 0.3; //m
l2 = 0.8; //m

//Maximum Normal Stress:
r_h = 6/20;
w_h = 40/20;
K = 1.6;

area2 = 0.02*0.01; //m^2 note its not 0.001.
max_stress = (K*P)/area2;
max_stress = (max_stress/10^6); // converting to MPa

//Displacement:
area1 = 0.04*0.01;
del_ad_1 = (P*l1)/(area1*E);
del_ad_2 = (P*l2)/(area2*E);
del_ad = (2*del_ad_1)+ del_ad_2;
del_ad = del_ad*1000; //converting m to mm

//Display:


printf("\n\nThe maximum normal stress                              = %1.1f MPa",max_stress);
printf('\nThe displacement of one end with respect to the other  = %1.2f mm',del_ad);

