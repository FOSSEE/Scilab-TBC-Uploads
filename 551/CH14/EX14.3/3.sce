clc
T2=268; //K
T1=308; //K
Q=29; //Heat leakage from the surroundings into the cold storage in kW
COP_ideal=T2/(T1-T2);
COP_actual=1/3*COP_ideal;

W=Q/COP_actual;
disp("Power required =")
disp(W)
disp("kW")