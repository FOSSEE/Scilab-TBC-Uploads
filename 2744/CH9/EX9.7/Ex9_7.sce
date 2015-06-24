clear;
clc;
m = 4;// no. of angles
b = 7/2;// inches
d = 7/2;// inches
h = 3/8;// inches
s = 18;// inches
l = 30;// feet
n = 3;// factor of safety
A = 2.49;// in^2
J = 1;// inches
I_xxs = 2.80;// in^4
I_yys = I_xxs;// in^4
//from the chapter V. 
I = 648.64;// in^4
k = sqrt(65.2);// in^2
f_c = 21;// lb/in^2
a = 1/7500;
P = m*f_c*A/(1+a*((l*12)^2)/k^2);// tons
P_safe = P/n;// tons
printf('The safe axial load = %.1f tons',P_safe);
