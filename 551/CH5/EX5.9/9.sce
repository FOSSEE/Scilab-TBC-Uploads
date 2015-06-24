clc
T1=1273; //K
T2=313; //K
n_max=1-T2/T1;
Wnet=1;
Q1=Wnet/n_max;
Q2=Q1-Wnet;
disp("the least rate of heat rejection = ")
disp(Q2)
disp("kW")