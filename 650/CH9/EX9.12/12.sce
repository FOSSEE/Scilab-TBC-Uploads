clc
N=2000/60; // rps
Q=50/3600; // m^3/s
g=9.81; // m/s^2
H=5; // m

S_n=N*Q^(1/2)/(g*H)^(3/4);
disp("Suction specific speed =")
disp(S_n)
