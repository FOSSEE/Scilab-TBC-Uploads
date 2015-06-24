clc;clear;
//Example 15.10
//calculation of crosssection

//given values
t=.01*10^-3;//thickness in m
n=10^13;//no of protons bombarding target per s
NA=6.02*10^26;//avogadro's number
M=7;//atomic mass of lithium in kg
d=500;//density of lithium in kg/m^3
n0=10^8;//no of neutrons produced per s
//calculation
n1=d*NA/M;//no of target nuclei per unit volume
n2=n1*t;//no of target nuclei per area
A=n0/(n*n2);
disp(A,'crosssection(in m^2) for this reaction is');