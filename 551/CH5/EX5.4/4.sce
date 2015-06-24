clc
T2=261; //K
T1=308; //K
Q2=2; //kJ/s
Q1=Q2*(T1/T2);
W=Q1-Q2;

disp("Least power required to pump the heat continuosly")
disp(W)
disp("kW")