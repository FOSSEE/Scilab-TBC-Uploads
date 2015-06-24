clc;
Cd=0.56;
B=1.2; // m
g=9.8; // m/s^2
H=0.018; // m

Q=2/3*Cd*B*sqrt(2*g)*H^(3/2);
disp("The rate of flow of liquid over the weir is ")
disp(Q)
disp("m^3/h")