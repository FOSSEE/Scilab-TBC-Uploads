// Example 6.6
format('v',6)
clc;
clear;
close;
// given data
V2= 1.1;// in V
Vin= 1*10^-3;// in V
Vt= 25*10^-3;// in V
R2= 1*10^3;// in Ω
R_C= 3.6*10^3;// in Ω
I_E= V2/R2;// in A
// Emitter diode ac resistance
r_desh_e= Vt/I_E;// in Ω
A= R_C/r_desh_e;
// The output voltage 
Vout= A*Vin;// in V
Vout= Vout*10^3;// in mV
disp(Vout,"The output voltage in mV is : ")
