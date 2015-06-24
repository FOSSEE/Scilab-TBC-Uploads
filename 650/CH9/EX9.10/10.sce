clc
dz=10; // z2-z1
g=9.81; // m/s^2
d=0.05; // m
f=0.005; 
L=100; // m
N1=1200; // rpm

// H=z2-z1+16*Q^2/2/g/%pi^2/d^4*(4*f*L/d+1)
// H=10+5.42*10^5*Q^2

Q=[0.000 0.002 0.004 0.006 0.008 0.010];
H_p=[40.0 39.5 38.0 35.0 30.0 20.0];
H_s=[10.0 12.2 18.7 29.5 44.7 64.2];

plot(Q,H_p, 'b')
plot(Q,H_s, 'r')
xtitle("", "Flow", "Head")
legend("pump", "system")

a=[0.0066 0.0066];
b=[0 33.8];
plot(a,b, '--')
e=[0 0.0066];
f=[33.8 33.8];
plot(e,f, '--')

i=[0.0049 0.0049];
h=[0 23];
plot(i,h, '--')
l=[0 0.00495];
m=[23 23];
plot(l,m, '--')

// From graph
H1=34; // m
H2=23; // m
Q1=0.0066; // m^3/s
Q2=0.00495; // m^3/s

disp("Duty point =")
disp(Q1)
disp("m^3/s")

N2=N1*(H2/H1)^(1/2);
disp("The speed of the pump to reduce the flow by 25% =")
disp(N2)
disp("rpm")