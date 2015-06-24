// Example 4.2
format('v',5)
clc;
clear;
close;
// given data
Vrms= 40;// in V
R_L= 20;// in Ω
V2peak= Vrms/0.707;// in V
Vout_peak= V2peak/2;// in V
// The dc load voltage 
Vdc=0.636*Vout_peak;// in V
// The peak inverse voltage across each diode 
PIV= V2peak;// in V
Idc= Vdc/R_L;// in A
// The dc current through each diode 
I_diode= Idc/2;// in A
disp(Vdc,"The dc load voltage in volts is : ");
disp(PIV,"The peak inverse voltage across each diode in volts is : ");
disp(I_diode,"The dc current through each diode in A is : ")
