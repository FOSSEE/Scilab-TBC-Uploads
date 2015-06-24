
clc;
x=0.9;
uf=511;
ug=2531;
u=uf*(1-x)+(ug*x);
V=10;
vg=0.8461;
v=x*vg;
m=V/v;
h=2944;
u2=2640;
v2=0.3522;
m2=V/v2;
Q=m2*u2-m*u-h*(m2-m);
disp("heat rejected is;");
disp("kJ",-Q)
//Answers vary more than than +/-5 :
//Answers in the textbook is wrong
