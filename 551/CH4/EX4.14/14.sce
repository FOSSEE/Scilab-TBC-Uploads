clc
dT=25; //0C
Q=30; //kJ
cv=1.2; //kJ/kg.0C
m=2.5; //kg
dU=m*cv*dT;


disp("change in internal energy = ")
disp(dU)
disp("kJ")

W=Q - dU;
disp("Work done = ")
disp(W)
disp("kJ")