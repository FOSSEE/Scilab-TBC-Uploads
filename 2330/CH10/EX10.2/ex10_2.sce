// Example 10.2
format('v',6)
clc;
clear;
close;
// given data
V_CC= 15;// in V
I_Csat= 150;// in mA
P_Lmax= 563;// in mW
I= 0.02*I_Csat;// in mA
Idc= 0.318*I_Csat;// in mA
I_CC= I+Idc;// in mA
P_CC= V_CC*I_CC;// in mW
// The efficiency of amplifier 
Eta= P_Lmax/P_CC*100;// in %
disp(Eta,"The efficiency of amplifier in % is : ");

// Note: The answer in the book is not accurate


