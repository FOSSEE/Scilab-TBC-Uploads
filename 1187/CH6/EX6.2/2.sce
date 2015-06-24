clc
c=0.001; // m
p1=15*10^3; // Pa
u=0.6; // kg/m/s
R=6; // ratio of R2/R1

Q=%pi*c^3*p1/(6*u*log(R));
disp("(b)Rate at which oil must be supplied =")
disp(Q)
disp("m^3/s")