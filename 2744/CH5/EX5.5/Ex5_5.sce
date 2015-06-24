clear;
clc;
function [M,f]=func(W,l,d,b,Z)
    M = 0.5*W*d - (W/l)*d*b;
    f = M*12/Z;
endfunction
b = 6;// inches
d = 12;// inches
l = 16;// feet
W = 6000;// lb-wt
Z = (1/6)*b*d^2;
d1 = 2;// feet
d2 = 4;// feet
d3 = 6;// feet
d4 = 8;// feet
b1 = 1// feet
b2 = 2;// feet
b3 = 3;// feet
b4 = 4;// feet
[M2,f2] = func(W,l,d1,b1,Z);
[M4,f4] = func(W,l,d2,b2,Z);
[M6,f6] = func(W,l,d3,b3,Z);
[M8,f8] = func(W,l,d4,b4,Z);
printf('At %d feet,M2 = %d lb-feet and f2 = %.1f lb/in^2\n At %d feet,M4 = %d lb-feet and f4 = %d lb/in^2 \n At %d feet,M4 = %d lb-feet and f6 = %.1f lb/in^2\n At %d feet,M4 = %d lb-feet and f8 = %d lb/in^2\n',d1,M2,f2,d2,M4,f4,d3,M6,f6,d4,M8,f8);

