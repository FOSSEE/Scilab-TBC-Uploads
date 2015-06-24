clear;
clc;

//page no. 182

d = 2;//ft
Q = 40;//cfs/ft


V1 = Q/d;
y1 = d;
K1 = V1^2 /(32.2*y1);
y2 = (-1 +sqrt(1+8*K1));
V2 = Q/y2 ;
delta = d + (V1^2 /(2*32.2)) - y2 - (V2^2 /(2*32.2));
hp = Q*62.4*delta/550;
printf('y2 = %.2f ft,\n delta = %.2f ft,\n Horsepower dissipated = %.1f hp',y2,delta,hp);

//there are errors in the answer given in textbook
