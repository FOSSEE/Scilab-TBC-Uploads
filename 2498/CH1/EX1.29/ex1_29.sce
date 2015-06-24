// Exa 1.29
clc;
clear;
close;
format('v',6)
// Given data
Eta = 1;
V_T = 0.026;
// I = Io*( (%e^(V/(Eta*V_T))) - 1 ) and  I = -Io;
// I = -0.9*Io;
// -0.9*Io = Io*( (%e^(V/(Eta*V_T))) - 1 );
V = Eta*V_T*log(0.1);// in V
V = V * 10^3;// in mV
disp(V,"The voltage in mV is");
V = 0.05;// in V
// The ratio of diode current with a forward bias to current with a reverse bias 
If_by_Ir= ( (%e^(V/V_T))-1 )/( (%e^(-V/V_T))-1 );
disp(If_by_Ir,"The ratio of diode current with a forward bias to current with a reverse bias is");
Io = 10;// in µA
V = 0.1;// in V
// The value of I1 
I1 = Io*( (%e^(V/V_T))-1 );// in µA
disp(I1,"The value of I1 in µA is");
V = 0.2;// in V
// The value of I2
I2 = Io*( (%e^(V/V_T))-1 );// in µA 
I2 = I2 * 10^-3;// in mA
disp(I2,"The value of I2 in mA is");
V = 0.3;// in V
// The value of I3
I3 = Io*( (%e^(V/V_T))-1 );// in µA
I3 = I3 * 10^-6;// in A
disp(I3,"The value of I3 in A is");
