// scilab Code Exa 18.34 Counter Rotating fan

n=0.809; // combined efficiency of the fans
phi=0.245; // flow coefficient
A=0.212; // data from Ex14.1
d=0.45; // data from Ex14.1
u=22.62; // data from Ex14.1
cx=phi*u;
Q=1.175; // in m3/s
delp0_I=550.755; // data from Ex14.1
delp0_II=delp0_I;
delp0=delp0_I+delp0_II;
disp("mm W.G.",delp0/9.81,"(a)the overall pressure rise obtained is")
IP=Q*delp0; // power required for isentropic flow in Watts
P=IP/n;
disp("kW",P*1e-3,"(b)the Power required is")
