//Ex 2.2
clc;clear;close;
format('v',5);
IC10=20*10^-6;//A
IREF=0.5*10^-3;//A
IS=10^-14;//A
VT=25*10^-3;//V(Thermal Voltage)
R4=VT/IC10*log(IREF/IC10);//ohm
disp(R4/1000,"For Widlar current source design, the value of R4(kohm) : ");
