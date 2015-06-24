// Example 4.6
format('v',5)
clc;
clear;
close;
// given data
Vdc= 56.6;// in V
R_L= 100;// in Ω
f=120;// in Hz
C= 1000;// in µF
C= C*10^-6;// in F
V2peak= Vdc;// in V
Idc= Vdc/R_L;// in A
// The peak-to-peak ripple 
Vrip= Idc/(f*C);// in V
// The dc load voltage 
Vdc= V2peak-Vrip/2;// in V
disp(Vrip,"The peak-to-peak ripple in volts is : ");
disp(Vdc,"The dc load voltage in volts is : ")
