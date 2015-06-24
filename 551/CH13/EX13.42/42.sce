clc
cp=1.11;
T3=883; //K
T2a=529; //K
W_turbine=290.4; //kJ/kg
W_net=48.2; //kJ/kg

Qs=cp*(T3-T2a);

n_thermal=W_net/Qs*100;
disp("Thermal efficiency =")
disp(n_thermal)
disp("%")

W_ratio=W_net/W_turbine; //Work ratio=net work output/Gross work output
disp("Work ratio =")
disp(W_ratio)