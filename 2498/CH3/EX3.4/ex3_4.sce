// Exa 3.4
clc;
clear;
close;
format('v',8)
// Given data
P_ZM = 1500;// in mW
Deratingfactor = 3.33;// in mW
T1 = 85;// in degree C
T2 = 60;// in degree C
total = Deratingfactor*(T1-T2);// total derating factor in mW
// The maximum power dissipation 
P_ZM = P_ZM - total;// in mW
disp(P_ZM,"The maximum power dissipation in mW is");
