clc
W=150; //kJ
V1=0.6; //m^3

// p=8-4*V
// W=integration of p*dV from V1 to V2
// Solving above equation we get

V2=0.354; //m^3
disp("Final volume =")
disp(V2)
disp("m^3")

p2=8-4*V2;
disp("Final pressure =")
disp(p2)
disp("bar")