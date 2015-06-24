clear;
clc;
HP = 750;
N = 90;// RPM
m = 40/100;
f = 12000;// lb/in^2
t = 1;// inch
T = HP*33000/(2*%pi*N);// lb-inches
T_max = (1+m)*T;// lb-inches
//On solving (4*t)D^3 - (6*t^2)D^2 +(4*t^3 -(16*M/f*%pi))D -t^4 = 0, we get D
D = 7.6;//inches
d = D - 2;//inches
printf('A shaft % d inches external diameter and %d inches internal diameter will be satisfactory.',round(D),round(d));

