// Exa 3.10
format('v',7)
clc;
clear;
close;
// given data
R_Z= 7;// in Ω
I_Z1=12.2;// in mA
I_Z2=60.2;// in mA
deltaV_Z=(I_Z2-I_Z1)*R_Z;// in mV
deltaV_Z= deltaV_Z*10^-3;// in V
Vz= 12;// in V
// The output voltage,
Vout= Vz+deltaV_Z;// in V
disp(Vout,"The output voltage in V is : ");
