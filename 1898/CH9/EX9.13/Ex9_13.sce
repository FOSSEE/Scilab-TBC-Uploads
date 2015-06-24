clear all; clc;

disp("Scilab Code Ex 9.13 : ")

//Given:
w = 120; //kN/m
I = 67.4*(10^-6);
V= 84; //kN
M = 30.6; //kNm
t = 10/1000; //m

//Stress Components:
y = 0.200/2;
sigma = -(M*10^3*y)/(I*10^6);

Q = (0.100 + 0.015/2)*(0.175)*(0.015);
tou = (V*Q*10^3)/(I*t*10^6);

//Principal Stresses:

k = sigma/2;
R = sqrt( (-sigma+k)^2 + tou^2);
sigma1 = R + k;
sigma2 = k -R ;

theta_p2 = atan(-tou/(sigma-k));
theta_p2 =theta_p2/2*(180/%pi);

//Display:


printf('\n\nThe prinicpal stresses at point P are:');
printf('\n %1.1f  MPa',sigma1);
printf('\n %1.1f  MPa',sigma2);
printf('\nThe angle of rotation of the plane  %1.1f  degrees',theta_p2);

//----------------------------------------------------------------------END--------------------------------------------------------------------------------
