//Example 1_5 page no:6
clc
clear
L=2;//Inductance in henry
di=2;//Current variation in amps/sec
di=2*2;//current change in 2 seconds
t=2;//time in sec
v=L*di;
disp(v,"1) voltage across inductor(in volt)")
W=0.5*(L*di^2);
disp(W,"2) energy stored in magnetic field(in joules)")
