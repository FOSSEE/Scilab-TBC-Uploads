//Exa 11.14
clc;
clear;
close;
//Given data :
Vrms=66;//kV
Vmax=Vrms*sqrt(2);//kV
gmax=60;//kV/cm
d=2*Vmax/%e/gmax;//cm
d1=%e*d;//cm
V1=Vrms/%e;//kV
dV=Vrms-V1;//kV(Voltage between sheath & intersheath)
disp(dV,"Voltage between sheath & intersheath(kV)");
