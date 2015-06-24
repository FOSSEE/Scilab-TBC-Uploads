clc;
Q=15/3600; // m^3/s
d=0.05; // m
Rho=780;
u=1.7*10^(-3); // Ns/m^2
f=0.0065;
L=100; // m
g=9.8; // m^2/s

v=4*Q/%pi/d^2;

del_pf=2*f*Rho*v^2*L/d;
disp("The pressure drop due to friction is ")
disp(del_pf);
disp("kNm-2")

H_f=4*f*L*v^2/(d*2*g);
H_exit=v^2/2/g;
H_entrance=v^2/4/g;

H=H_f+H_exit+H_entrance;
disp("and the difference in levels is")
disp(H);
disp("m");