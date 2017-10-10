clc;
Vf=0.7; //volt
Vin=10; //volt
VRs=Vin-Vf; //volt
RL=1200; //ohm
Rs=220; //ohm
VL=-Vin*(RL/(RL+Rs)); //volt
disp('Vpk',VL,"VL=");//The answers vary due to round off error
