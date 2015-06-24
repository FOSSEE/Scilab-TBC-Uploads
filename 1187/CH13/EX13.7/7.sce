clc

H=16.5; // m
Q=0.015; // m^3/s
n=0.63;
H_s=11.5;
rho=1000; // kg/m^3
g=9.81; // m/s^2

h_f=(100*Q)^2; // frictional head loss

h_valve = H - H_s - h_f;

P=rho*g*H*Q/n;
disp("(i) the power consumption of the pump =")
disp(P/1000)
disp("kW")

disp("(ii) The power dissipated in the pump =")
P_d=P*(1-n)/1000;
disp(P_d)
disp("kW")

disp("(iii) The power lost by pipe friction =")
P_f=rho*g*h_f*Q;
disp(P_f/1000)
disp("kW")

disp("(iv) The power lost in the valve =")
P_valve=rho*g*h_valve*Q;
disp(P_valve/1000)
disp("kW")

P_s=rho*g*H_s*Q;

n_overall = P_s/P*100;

disp("(b) Overall efficiency of the installation =")
disp(n_overall)
disp("%")
