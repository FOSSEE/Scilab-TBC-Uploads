clear;
clc;
l = 20;// feet
b = 9;// inches
h = 10;// feet
w = 120;// lb. per cub. foot
f = 1100;// lb/in^2
W = w*(3/4)*l*h;// lb-wt
BM_max = W*l*12/8;// lb-inches
//assumnig d = 2b
b = (6*BM_max/(f*4))^(1/3);// inches
d = 2*b;// inches
printf('b = %.2f inches\n d = %.2f inches',b,d);
printf('\n A section %d X %d will therfore do.',b,d);
