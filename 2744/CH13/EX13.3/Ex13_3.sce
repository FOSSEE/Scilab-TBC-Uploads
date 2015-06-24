clear;
clc;
function Z = quadratic(d,M_c,c_limit,b)
    n = poly(0,"n");
    p = n^2-(d*3)*n + M_c*3/(0.5*c_limit*b);
    Z = roots(p);
endfunction
b = 12;//inches
h = 22;//inches
r = 2;//inches
W = 1500;//lb per foot run
d = h-r;//feet
l = 20;//inches
c_limit = 700;// lb/in^2
m = 15;
M_c = W*20*l*b/8;// lb-inches
Z = quadratic(d,M_c,c_limit,b);
n = round(Z(2));
t = m*c_limit*(d-n)/n;// lb/in62
A_t = 0.5*c_limit*b*n/t;// in^2
printf('Area of steel reinforcement required is, A_t = %d in^2',A_t);
printf('\n Corresponding stress in steel is, t = %d lb/in^2',t);
