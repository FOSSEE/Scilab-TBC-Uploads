//example 10.1
clc; funcprot(0);
// Initialization of Variable
phi=0.7;
pg=0.3632;//lbf/in^2
omega2=0.0052;
pv1=phi*pg;
omega1=0.622*pv1/(14.7-pv1);
disp(omega1,"lb(vapor)/lb(dry air) is");
mv1=1/(1/omega1+1);
ma=1-mv1;
mv2=omega2*ma;
mw=mv1-mv2;
disp(mw,"mass of water vapor that condenses in lb");
clear()
