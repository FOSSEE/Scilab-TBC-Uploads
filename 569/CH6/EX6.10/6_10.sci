// Calculating Difference mode gain and output voltage
clc;
V2=5*10^-3;
V1=3*10^-3;
Vo=300*10^-3;
Vd=V2-V1;
Ad=Vo/Vd;
disp(Ad,'difference mode gain=')
V2=155*10^-3;
V1=153*10^-3;
Vo=Ad*(V2-V1);
disp(Vo,'output voltage (V)=')