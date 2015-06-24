clc
r=10; //kg/min
p1=1.5*10^5; //N/m^2
rho1=26; //kg/m^3
C1=110; //m/s
u1=910; //kJ/kg
p2=5.5*10^5; //N/m^2
rho2=5.5; //kg/m^3
C2=190; //m/s
u2=710; //kJ/kg
Q=55; //kJ/s
h=55; //m
g=9.81; //m/s^2
v2=1/rho2;
v1=1/rho1;

disp("(i) Change in enthalpy")
dh=u2-u1+ (p2*v2-p1*v1)/10^3;
disp(dh)
disp("kJ/kg")

disp("(ii) Work done during the process (W).")

Q=330; //kJ/kg
KE=(C2^2-C1^2)/2/10^3; //kJ
PE=g*h/10^3; //kJ
W=-Q-KE-PE-dh;
disp("Work done = ")
disp(W)
disp("kJ")


disp("Work done per second = ")
P=W*10/60;
disp(P)
disp("kW")