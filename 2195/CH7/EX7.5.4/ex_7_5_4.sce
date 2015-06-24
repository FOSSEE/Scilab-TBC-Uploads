//Example 7.5.4: current
clc;
clear;
close;
//given data :
format('v',7)
R=500;//in ohm
Rg=150;// in ohm
del_r=10;// in ohm
E=6;//in V
E_th=(E*del_r)/(4*R);
R_th=R;
Ig=(E_th/(R_th+Rg))*10^6;
disp(Ig,"current,Ig(micro-A) = ")
