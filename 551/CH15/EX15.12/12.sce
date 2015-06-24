clc
r2=0.7; //m
r1=0.61; //m
dt=220; //dt=t1-t2; 0C
k=0.083; //W/m 0C

Q=dt/((r2-r1)/(4*%pi*k*r1*r2));
disp("Rate of heat leakage =")
disp(Q)
disp("W")