//find max safe working voltage
clear;
clc;
//soltion
//given
V3=11;//kV
k=12.5/100;//shunt/self cpacitance
V=poly(0,"V");
V1=V/(3+4*k+k*k);
V3_=V1*(1+3*k+k*k);
V=roots(V3-V3_);
printf("Maximum Voltage for string= %.2fkV",V);
