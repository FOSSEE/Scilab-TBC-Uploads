// Example 8.3
format('v',6)
clc;
clear;
close;
// given data
V_EE= 15;// in V
V_BE= 0.7;// in V
R_E= 22*10^3;// in Ω
Vin= 2*10^-3;// in V
V= 25*10^-3;// in V
R1= 10*10^3;// in Ω
R2= 30*10^3;// in Ω
I_E= (V_EE-V_BE)/R_E;// in A
// The ac resistance of emitter diode,
r_desh_e= V/I_E;// in Ω
r_L= R1*R2/(R1+R2);// in Ω
// The voltage gain
A= r_L/r_desh_e;
// The output voltage 
Vout= A*Vin;// in V
Vout= Vout*10^3;// in mV
disp(Vout,"The output voltage in mV is : ")
