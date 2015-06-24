//example 10.2
clc; funcprot(0);
// Initialization of Variable
phi1=0.8;
pg1=0.01228;
pa1=0.9902*10^5;;
R=8314;//gasconstant
T=283;
pv1=phi1*pg1;
va1=R/28.97*T/pa1;
madot=150/va1;
omega=0.622*(pv1/(1-pv1));
Qcvdot=madot*(303.2-283.1)+omega*(2556.3-2519.8);
disp(Qcvdot,"heat flow rate in kJ/min");
pv2=pv1;
phi2=pv2/0.04246;
disp(phi2*100,"humidity in %");
//alternatively
madot=150/0.81;
Qcvdot=madot*(45.9-25.7);
disp(Qcvdot,"heat flow rate in kJ/min");
clear()
