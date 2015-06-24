clc
d2=0.06; // m
d1=0.12; // m
k=0.44;
f=0.05;
L1=500; // m
g=9.81; // m/s^2

// v1=d2^2/d1^2*v2

// H_f=4*f*L1/16/d*v2^2/2/g
// H_c=k*v2^2/2/g
// H_f=4*f*L2/d*v2^2/2/g
// H_exit=v2^2/2/g

v2=sqrt(30*2*g/173.4);

Q=%pi*d2^2/4*v2;
disp("The rate of flow =")
disp(Q)
disp("m^3/s")