clear;
clc;
d = 1;// inches
t = 1/8;// inches
l = 10;// feet
E = 13500;// tons/in^2
D = d+2*t;// inches
I = (%pi/64)*(D^4 - d^4);// in^4
P = 20.25*E*I/(12*l)^2 ;// tons
printf('The collapsing load, P = %.2f tons',P);
