// chapter 16
// example 16.13
// Determine voltage and current
// page-1041
clear;
clc;
// given
l=25, b=15, t=1; // in cm (dimensions of piece)
P=1; // in kW
Er=4; // relative permittivity
PF=0.6; // power factor
f=40; // in MHz
Eo=8.854E-12; // absolute permittivity
// calculate
l=l*1E-2; // changing unit from cm to m
b=b*1E-2; // changing unit from cm to m
t=t*1E-2; // changing unit from cm to m
P=P*1E3; // changing unit from kW to W
f=f*1E6; // changing unit from MHz to Hz
A=l*b; // calculation of area
C=Eo*Er*A/t; // calculation of capacitance
// since P=2*%pi*f*C*V^2*PF, therefore we get
V=sqrt(P/(2*%pi*f*C*PF)); // calculation of voltage
Xc=1/(2*%pi*f*C); // calculation of capacitive reactance
I=V/Xc; // calculation of current
printf("\nThe voltage is \t V=%.2f V",V);
printf("\nThe current is \t I=%.2f A",I);