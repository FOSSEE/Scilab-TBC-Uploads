//example 5.5
clc; funcprot(0);
// Initialization of Variable
A1=0.1;
V1=6.0;
V2=2.0;
delh=290.16-451.8;
p1=10^5;
Rbar=8314.0;
Qcvdot=-180.0/60;
M=28.97;//molecular mass
T1=290.0;
mdot=A1*V1*p1*M/Rbar/T1;
Wcvdot=Qcvdot+mdot*(delh+(V1^2/2-V2^2/2)/1000);
disp(Wcvdot,"heat transfer per unit time in kW")
clear()
