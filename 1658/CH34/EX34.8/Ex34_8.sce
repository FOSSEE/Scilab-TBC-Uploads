clc;
//e.g 34.8
Vs=24;
Rs=500;
Vz=12;
Izmin=3*10**-3;
Izmax=90*10**-3;
rz=0;
Is=(Vs-Vz)/Rs;
disp('mA',Is*10**3,"Is=");
ILmax=Is-Izmin;
disp('mA',ILmax*10**3,"ILmax=");
RLmin=Vz/ILmax;
disp('ohm',RLmin*1,"RLmin=");
