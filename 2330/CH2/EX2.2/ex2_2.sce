// Example 2.2
clc;
clear;
close;
format('v',6)
// given data
Vin= 15;// in V
I=0;
R_L= 10;// in kΩ
R_L= R_L*10^3;// in Ω
// The output voltage 
Vout= I*R_L;// in V
// The voltage across the diode 
V_R= Vin-Vout;// in V
disp(Vout,"The output voltage in volts is : ");
disp(V_R,"The voltage across the diode in volts is : ");
