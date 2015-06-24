clear;
clc;
l = 5;// feet
b = 5/2;// inches
d = 5/2;// inches
h = 1/4;// inches
n = 3;// factor of safety
A = 1.19;// in^2
k = 0.49;// minimum radius of gyration
f_c = 21;// lb/in^2
a = 1/7500;
P = f_c*A/(1+(a/2)*((l*12)^2)/k^2);// tons
P_safe = P/n;// tons
printf('The safe axial load = %.2f tons',P_safe);
