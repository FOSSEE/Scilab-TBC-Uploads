clc
//Chapter 7:Conditions for Oscillation
//example 7.6 page no 265
//given
f=5.7*10^6//given frequency
Xs=4654//shunt reactance for shunt capacitacne of 6pF
r=25//series resistance
Q1=Xs/r//equivalent to crystal Q for easily expressing
C1=21*10^-15
XC1=(C1*2*%pi*f)^-1//capacitive reactance
disp('C1 is much smaller than the shunt capacitance,so the inductive reactance is XL=1.3*10^6')
Q=XC1/r//crystal Q
mprintf('the crystal Q is %d ',Q)
