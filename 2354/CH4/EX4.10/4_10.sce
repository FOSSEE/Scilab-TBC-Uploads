//example 4.10
clc; funcprot(0);
// Initialization of Variable
m1=2;
m2=8;
T1=350;
T2=300;
P1=0.7;//bar
P2=1.2;//bar
Tf=315;//K
cv=0.745;//heat capacity
pf=(m1+m2)*Tf/(m1*T1/P1+m2*T2/P2);
disp(pf,"final pressure in bar");
Q=m1*cv*(Tf-T1)+m2*cv*(Tf-T2);
disp(Q,"heat transfer into the system in kJ");
clear()
