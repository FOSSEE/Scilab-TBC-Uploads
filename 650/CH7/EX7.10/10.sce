clc
Cd=0.62;
g=9.81; // m/s^2
H=0.03; // m

Q=8/15*Cd*sqrt(2*g)*H^(5/2);
disp("Rate of flow =")
disp(Q)
disp("m^3/s")