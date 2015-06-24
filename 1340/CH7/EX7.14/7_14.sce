clc;
A = [-5 1 0;0 -2 1;20 -10 1];
C = [-1 1 0];
B = [0;0;1];

a= inv(A);
syms t k;
t = 1/k;
x = (1+C*a*B);
y = (C*(a^2)*B);
disp(x,"steady state error due to step input:");

z = x*t + y; 
sse = limit(z,k,0);
disp(sse,"steady state error due to ramp input:");