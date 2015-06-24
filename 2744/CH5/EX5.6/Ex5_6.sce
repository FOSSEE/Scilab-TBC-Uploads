clear;
clc;
w = 160;// lb. per sq. foot
b = 3;// inches
d = 9;// inches
l = 15;// feet
f = 1200;// lb. per sq. inch
Z = (1/6)*b*d^2;// in^3
M_r = f*Z;// lb-inches
x = M_r/(w*l^2*12/8);// feet
printf('x = %.1f feet',x);

//The answer is correct only, but it is approximated in the text book
