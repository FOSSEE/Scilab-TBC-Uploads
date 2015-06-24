clc
d=0.15; //m
T=303; //K
p=3*10^5; //N/m^2
l=0.085; //m
Q=-4000; //J

disp("(i) Workdone by the system")
dv=%pi/4*d^2*l;
W=p*dv;
disp("W=")
disp(W/10^3)
disp("kJ")


disp("(ii) Decrease in internal energy of the system")
dU=(Q-W)/10^3;
disp("Decrease in internal energy = ")
disp(-dU)
disp("kJ")