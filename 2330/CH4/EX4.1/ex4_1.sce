// Example 4.1
format('v',5)
clc;
clear;
close;
// given data
V2rms= 40;// in V
R_L= 20;// in Ω
V2peak= V2rms/0.707;// in V
Vout_peak= V2peak;// in V
// The dc voltage across the load resistor 
Vdc=0.318*Vout_peak;// in V
//The peak inverse voltage across the diode 
PIV= V2peak;// in V
Idc= Vdc/R_L;// in A
// The dc current through the diode 
I_diode= Idc;// in A
disp(Vdc,"The dc voltage across the load resistor in volts is : ");
disp(PIV,"The peak inverse voltage across the diode in volts is : ");
disp(I_diode,"The dc current through the diode in A is : ")
