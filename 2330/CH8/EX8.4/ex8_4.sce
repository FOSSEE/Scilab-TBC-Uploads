// Example 8.4
format('v',5)
clc;
clear;
close;
// given data
V_EE= 10;// in V
V_BE= 0.7;// in V
R_E= 6.8*10^3;// in Ω
Rs= 100;// in Ω
R1= 3.3*10^3;// in Ω
R2= 1.5*10^3;// in Ω
V= 25*10^-3;// in V
Vs= 1*10^-3;// in V
I_E= (V_EE-V_BE)/R_E;// in A
r_desh_e= V/I_E;// in Ω
Zin= r_desh_e;// in Ω
// The input voltage to the emitter,
Vin= Zin*Vs/(Rs+Zin);// in V
r_L= R1*R2/(R1+R2);// in Ω
// The voltage gain,
A= r_L/r_desh_e;
// The output voltage 
Vout= A*Vin;// in V
Vout= Vout*10^3;// in mV
disp(Vout,"The output voltage in mV is : ")
