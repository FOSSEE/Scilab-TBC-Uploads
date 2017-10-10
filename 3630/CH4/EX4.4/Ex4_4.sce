clc;
Vin=8; //volt
RL=6200; //ohm
Rs=100; //ohm
VL=Vin*(RL/(RL+Rs)); //volt
disp('Vpk',VL,"VL=");//The answers vary due to round off error
