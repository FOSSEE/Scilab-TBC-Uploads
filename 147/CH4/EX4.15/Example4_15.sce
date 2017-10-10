close();
clear;
clc;
//resistance 'R', capacitance 'C, maximum voltage 'Vm', source frequency 'w'
R = 1; //ohm
C = 1000 * 10^(-6); //F
Vm = 10; //V
w = 1000; //s^(-1)
//impedance 'Z'
Z = sqrt(R^2 + (1/(w*C))^2);
//phase difference in radian 'rad'
rad = atan(-1/(w*R*C));
//phase difference in theta 'theta'
theta = rad*180/%pi;
A = -Vm*sin(rad)/(w*R*C*Z);
//time constant 't'
t = 1/(R*C);
mprintf("i(t) = %d e^(-%d)t + %0.2f cos(%d t -( %d))",round(A), t, A*Z, t, theta);
