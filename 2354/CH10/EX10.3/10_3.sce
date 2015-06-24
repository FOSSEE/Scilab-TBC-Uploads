//example 10.3
clc; funcprot(0);
// Initialization of Variable
pv1=0.02123*10^5;
patm=1.013*10^5;
ha2=283.1;
ha1=303.2;
hg1=2556.3;
hg2=2519.8;
omega2=0.0076;
hf2=42.01;
T=303;//temperature
R=8314;//gas constant
M=28.97;//molecular mass
pa1=patm-pv1;
madot=280*pa1*M/R/T;
disp(madot,"mass flow rate in kg/min");
omega1=0.622*pv1/pa1;
k=omega1-0.0076;
disp(k,"mwdot/madot is (kg/kg)");
Qcvdot=madot*((ha2-ha1)-omega1*hg1+omega2*hg2+(omega1-omega2)*hf2);
disp(Qcvdot,"heat flow rate in kJ/min");
clear()
