// Exa 5.9
format('v',7);clc;clear;close;
// Given data
//format()
R1 = 10;// in k ohm
R2 = 10;// in k ohm
R3 = 10;// in k ohm
E = 10;// in V
// R2/R_V = R1/R3;
R_V = (R2*R3)/R1;// in k ohm
T=80;// in °C
Rv=9;// in kΩ
// Evaluation of error voltage by Thevenin's equivalent voltage
e = E*( (R3/(R1+R3)) - (Rv/(R2+Rv)) );// in V
// Evaluation of error voltage by approximation of slightly unbalanced bridge
del_r = R_V-Rv;// in k ohm
errorVoltage = (E*del_r)/(4*R1);// in V
disp(T,"The temperature at which the bridge is balanced in °C is : ");
disp(e,"The error voltage at 60 °C by Thevenin''s voltage in volts is : ")
disp(errorVoltage,"The error voltage at 60 °C by approximation of slightly unbalanced bridge in Volts is ");
