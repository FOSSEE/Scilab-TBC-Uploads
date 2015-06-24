// Example 4.3
format('v',5)
clc;
clear;
close;
// given data
Vrms= 40;// in V
R_L= 20;// in Ω
V2peak= Vrms/0.707;// in V
Vout_peak= V2peak;// in V
// The value of Vdc 
Vdc=0.636*Vout_peak;// in V
// The value of PIV 
PIV= V2peak;// in V
Idc= Vdc/R_L;// in A
//The value of I_diode
I_diode= Idc/2;// in A
disp(Vdc,"The value of Vdc in volts is : ");
disp(PIV,"The value of PIV in volts is : ");
disp(I_diode,"The value of I_diode in A is : ")
