// Example 2.12
clc;
clear;
close;
// Given data
g1= 1.75;// gauge reading in bar
atm= 1.013;// in atmospheric pressure in bar
P1= g1+atm;// in bar
T1= 12+273;// in K
T2= 45+273;// in K
// Formula P1*V1/T1 = P2*V2/T2 and since V1= V2
P2= P1*T2/T1;// in bar
g2=P2-atm;// tyre gauge reading in bar 
disp(g2,"Tyre guage reading at 45°C in bar is : ")
