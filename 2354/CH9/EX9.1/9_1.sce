//example 9.1
clc; funcprot(0);
// Initialization of Variable
T2=1212.0;
p1=1.0;
T1=540.0;
T4=1878.0;
T3=3600.0;
u4=342.2;
u1=92.04;
u3=721.44;
u2=211.3;
m=1.47/1000;
V1=0.02;
k=8;//V1/V2
p2=k*p1*T2/T1;
disp(p2,"pressure in atm");
p3=p2*T3/T2;
disp(p3,"pressure in atm");
p4=p1*T4/T1;
disp(p4,"pressure in atm");
neta=1-(u4-u1)/(u3-u2);
disp(neta*100,"thermal efficiency in %");
W=m*(u3-u4-u2+u1);
mep=W/V1/(1-1/k)*778/144;
disp(mep,"mean effective pressure in lbf/in^2 is equal to 8.03 atm");
clear()
