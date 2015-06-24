//Exa 7.1
clc;
clear;
close;
//Given data :
r=1;//cm
d=4;//meter
g0=30/sqrt(2);//kV/cm
LineVoltage=sqrt(3)*g0*r*log(d*100/r);//kV
disp(round(LineVoltage),"Line Voltage for comencing of corena(in kV) :");
