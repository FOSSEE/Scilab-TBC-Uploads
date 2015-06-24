//Caption:Find the percentage of flux setup by coil-1 links coil-2
//Exa:2.10
clc;
clear;
close;
//Refer to eqn 2.26
e_21=20;//voltage induced in coil-2 (in volts)
I1=2000;//rate of change of current in coil-1 (in Amperes/second)
M=e_21/I1;// in henry
L1=25*10^-3;//in henry
L2=25*10^-3;//in henry
//Refer to eqn 2.32
k=(M/L1)*100;//coefficient of coupling
disp(k,'percentage (%)=')