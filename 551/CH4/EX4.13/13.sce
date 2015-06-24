clc
P=1200; //kW
Qin=3360; //kJ/kg
Qout=2520; //kJ/kg
F=6; //kW
dQ=Qin - Qout;
dW=P-F; //kJ/s
m = dW/dQ;
disp("Steam flow round the cycle")
disp(m)
disp("kg/s")