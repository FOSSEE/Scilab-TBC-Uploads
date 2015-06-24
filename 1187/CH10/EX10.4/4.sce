clc

Q=8.75; // m^3/s
w=5; // m
n=0.0015; 
s=1/5000;

// Q/(w*h0) = u = m^(2/3)*i^(1/2)/n = 1/0.015*(w*h0/(w+2*h0))^(2/3)*sqrt(s);
// Solution by trial gives h0
h0=1.8; // m

q=1.75;
g=9.81;
hc=(q^2/g)^(1/3); // critical depth

disp("Depth =")
disp(h0)
disp("m")