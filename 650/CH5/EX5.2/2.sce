clc
r=[0 0.05 0.10 0.15 0.20 0.225 0.25];
v=[19 18.6 17.7 16.3 14.2 12.9 0];

// We define a new variable dQ=v*2*%pi*r. According to the given values of r, v, we get dQ as follows
dQ=[0 5.8 11.1 15.4 17.8 18.2 0];
plot(r,dQ)
xtitle("", "Radius", "v*2*%pi*r")
// From the graph area under the curve comes out to be 2.74
Q=2.74; // m^3/s
disp(" Rate of flow =")
disp(Q)
disp("m^3/s")

d=0.5; // m

v=4*Q/%pi/d^2;
disp("Average velocity =")
disp(v)
disp("m/s")