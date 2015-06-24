// Exa 1.40
clc;
clear;
close;
format('v',6)
// Given data
Vth= 0.5;// in V
R_F= 1*10^3;// in ohm
V= 5;// in V
// Applying KVL for loop, V-Vd-R_F*Ii= 0    (i)
// When Ii=0
Vd= V;// in V
// When Vd= 0
Ii= V/R_F;// in A
// From eq(i)
Ii= (V-Vth)/R_F;// in A
Vd= V-R_F*Ii;// in V
disp("The operating point is  : "+string(Vd)+" V, "+string(Ii*10^3)+" mA")
