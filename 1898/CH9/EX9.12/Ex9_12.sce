clear all; clc;

disp("Scilab Code Ex 9.12 : ")

//Given:
P = 900; //N
T = 2.5; //Nm
d = 40/1000; //m
r = d/2;
c = r;

//Stress Components:
J = (%pi/2)*(r^4);
tou = (T*c)/(J*1000);

A = (%pi*r^2);
sigma = P/(A*1000);

//Principal Stresses:
sigma_avg = (0 + sigma)/2;

R = sqrt( sigma_avg^2 + tou^2);
sigma1 = sigma_avg + R;
sigma2 = sigma_avg - R;

//Display:

printf('\n\nThe prinicpal stresses at point P are:');
printf('\n %1.1f  kPa',sigma1);
printf('\n %1.1f  kPa',sigma2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------




