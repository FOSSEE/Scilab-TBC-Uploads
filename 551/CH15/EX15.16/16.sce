clc
D=0.045; //m
l=3.2; //m
u=0.78; //m/s
k=0.66; //W/m K
v=0.478*10^(-6); //m^2/s
Pr=2.98;
tw=70; //0C
tf=50; //0C

A=%pi*D*l;
Re=D*u/v;

h=0.023*(Re)^0.8*(Pr)^0.4/D*k;
disp("Heat transfer co-efficient =")
disp(h)
disp("W/m^2 K")

Q=h*A*(tw-tf)/10^3;
disp("Rate of heat transfer =")
disp(Q)
disp("kW")