//example 10.5
clc; funcprot(0);
// Initialization of Variable
T1=100;
T2=70;
cpa=0.24;
omega1=0.0045;//humidity
hg1=1105;
hg2=38.1;
hg2=1092;
hf=38.1;
p2=14.696;//lb/in^2
omega2=(cpa*(T1-T2)+omega1*(hg1-hf))/(hg2-hf);
mwdot=352.1*60*(omega2-omega1);
disp(mwdot,"mass flow rate in lb/h");
pv2=omega2*p2/(omega2+0.622);
phi2=pv2/0.36332;
disp(phi2*100,"relative humidity in %")
clear()
