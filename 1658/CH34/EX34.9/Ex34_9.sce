clc;
//e.g 34.9
Vsmin=22;
Rs=1*10**3;
Vz=10;
RL=2*10**3;
Vsmax=40;
IL=Vz/RL;
disp('mA',IL*10**3,"IL=");
Izmax=((Vsmax-Vz)/Rs)-IL;
disp('mA',Izmax*10**3,"Izmax=");
Izmin=((Vsmin-Vz)/Rs)-IL;
disp('mA',Izmin*10**3,"Izmin=");
