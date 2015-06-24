// Scilab Code Ex2.5: Page:80 (2011)
clc;clear;
a = 0.003;....// Accuracy of the electron,in percent
s = 5e+03;....// Speed of the electron,in m/s
del_v = (a/100)*s;....// Change in velocity,in m/s
m0 = 9.1e-31;....// Rest mass of the electron,in kg
hcut = 1.054e-34;....// Plancks constant,J-s
del_x = hcut/(2*del_v*m0);
printf("\nThe uncertainity in the position of the electron = %4.2e m", del_x);

// Result 
// The uncertainity in the position of the electron = 3.86e-004 m 
