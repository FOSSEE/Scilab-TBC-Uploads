// Exa 3.4
clc;
clear;
close;
//given data
R1=1;// in  k ohm
R1=R1*10^3;// in ohm
R_f=10;// in k ohm
R_f=R_f*10^3;// in ohm
A=200000;
OutputVoltageSwing= 13;// in volt
SupplyVoltage=15;// in volt
Ri= 2;// in M ohm
Ri=Ri*10^6;// in ohm
Ro= 75;// in ohm
fo= 5;// in Hz
B= R1/(R1+R_f);
AB = A*B;
R_outf= Ro/(1+A*B);// in ohm
disp(R_outf*10^3,"Output Resistance in m ohm");
V_ooT= OutputVoltageSwing/(1+A*B);// in volt
disp(V_ooT*10^3,"Output offset voltage in mV");
