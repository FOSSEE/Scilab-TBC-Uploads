clear;
clc;

//page no. 312

d = 12;// in
D = 24;//in
theta = 20;//degrees
G = 10;//cfs
p = 20;//psi
V12 = G/(0.25*%pi);
V24 = V12/4;
K_L = 0.43;
p24 = ((p*144/62.4) + (V12^2 /(2*32.2)) - ((V24^2)/(2*32.2)) - K_L*(V12-V24)^2 /(2*32.2))/2.314;
printf('Pressure in the larger pipe = %.1f psi',p24);
