clc
Qa=0.003/60; // m^3/s
Ca=20; // g/l
Co=0.126; // g/l
dp=3700; // N/m^2
p=1000; // N/m^2
d=0.1; // m

a=%pi*d^2/4;
Qi=Qa*((Ca-Co)/Co);
Q=Qi+Qa;
B=10/6;

Cd=Q/a/sqrt(2*dp/p/(B^4-1));
disp("Coefficient of discharge =")
disp(Cd)
