clc
p1=105; //kPa
V1=0.4;  //m^3
p2=p1;
V2=0.20; //m^3
Q=-42.5; //kJ
W=p1*(V2-V1);
dU=Q-W;
disp("change in internal energy = ")
disp(dU)
disp("kJ")