clc

f=0.0085;
l=21.1; // m
d=0.09; // m
g=9.81; // m/s^2
rho=1000; // kg/m^3

// h1=hf=(4*f*l/d)*(16*Q^2/(2*%pi^2*d^4*g)) = (100*Q)^2

disp("(a)The head loss due to pipe friction in terms of flow rate Q is given as")
disp("(100*Q)^2")

// For Pump
Q=[0:0.006:0.042 0.052];
H=[15 16 16.5 16.5 15.5 13.5 10.5 7 0]
plot(Q,H,"r")
xlabel("Q(m^3/s)")
ylabel("H(m)")

// For Pipe System

// H1 = 11.5 + (100*Q)^2;

Q=[0:0.01:0.06];
plot(Q,(11.5+10000*Q^2),"b")

legend("pipe system", "pump")

// From the plot of the pump and pipe characteristics, the intersection is at 

H=16; // m
Q=0.021; // m^3/s
n=0.74;

P=rho*g*H*Q/n;

disp("(b)Power required =")
disp(P)
disp("W")
