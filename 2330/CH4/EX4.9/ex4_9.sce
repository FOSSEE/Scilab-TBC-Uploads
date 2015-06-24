// Example 4.9
format('v',5)
clc;
clear;
close;
// given data
C= 100;//in µF
C= C*10^-6;// in F
Rz= 5;//in Ω
Rs= 1*10^3;//in Ω
Idc= 11*10^-3;//in A
f=120;//in Hz
Vin_rip= Idc/(f*C);// in V
// The ripple across the load resistance 
Vout_rip= Rz*Vin_rip/(Rs+Rz);//in A
Vout_rip= Vout_rip*10^3;// in mV
disp(Vout_rip,"The ripple across the load resistance in mV is : ")
