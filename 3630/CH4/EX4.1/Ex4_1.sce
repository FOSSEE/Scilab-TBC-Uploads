clc;
Vin=12; //volt
RL=5100; //ohm
Rs=1000; //ohm
VL=(RL/(RL+Rs))*Vin ; //volt //voltage divide rule
disp('Vpk',VL,"VL=");//The answers vary due to round off error

