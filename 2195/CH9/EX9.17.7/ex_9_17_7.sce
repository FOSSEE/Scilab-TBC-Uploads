//Example 9.17.7 // impedance of CRO
clear;
close;
clc;
K=10;//
vin=1;//vpp 
vout=0.1;//in vpp
c1=2;// in pF
c2=c1*(K-1);//CAPACITANCE IN Pf
disp(c2,"capacitance in pF")
