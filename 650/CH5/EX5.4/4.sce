clc
Cd_o=0.65;
d=0.05;
d_o=0.025;
Cd_v=0.95;
d_v=0.038;

// (Q_o/Cd_o)^2*((d/d_o)^4 - 1)=(Q_v/Cd_v)^2*((d/d_v)^4 - 1)

// Q_v=4*Q_o
// Q = Q_v + Q_o
// Q = 5*Qv
Q1=20;
Q2=100-Q1;

disp("Flow through orifice =")
disp(Q1)
disp("%")

disp("Flow through venturi =")
disp(Q2)
disp("%")
disp("Thus 20 % of the flow passes through the orifice meter while 80 % of the flow passes through the venturi.")