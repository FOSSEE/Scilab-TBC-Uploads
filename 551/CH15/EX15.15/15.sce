clc
d=0.0015; //m
l=0.15; //m
A=%pi*d*l;
ts=120; //0C
tf=100; //0C
h=4500; //W/m^2 0C

Q=h*A*(ts-tf);
disp("Electric power to be supplied =")
disp(Q)
disp("W")