// Example 7.9
format('v',6)
clc;
clear;
close;
// given data
R1= 100;//in kΩ
R2= 100;//in kΩ
R3= 360;//in Ω
bita= 100;
V1= 5;// in V
v1= 1.4;// in V
v2= 25;// in mV
// Voltage at first base
V2= R1/R2*V1;// in V
// Emitter current in second transistor
I_E2= (V2-v1)/R3;// in A
I_E2= I_E2*10^3;// in mA
// Resistance of second emitter diode,
r_desh_e2= v2/I_E2;// in Ω
// Base current
I_B2= I_E2/bita;// in mA 
// Emitter current,
I_E1= I_B2;// in mA
// First emitter diode resistance
r_desh_e1= v2/I_E1;// in Ω
disp(r_desh_e2,"The value of r''e2 in Ω is : ")
disp(r_desh_e1,"The value of r''e1 in Ω is : ")
