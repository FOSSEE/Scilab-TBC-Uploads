//example 9.2
clc; funcprot(0);
// Initialization of Variable
T2=898.3;
T1=300.0;
T4=887.7;
vr3=3.97;
V1=0.861;
R=8314;//gas constant
u4=664.3;
u1=214.07;
h3=1999.1;
h2=930.98;
p1=0.1;
k=18.0;//V1/V2
rc=2.0;//V3/V2
p2=k*p1*T2/T1;
disp(p2,"pressure in atm");
T3=rc*T2;
disp(T3,"temperature in K");
vr4=vr3*k/rc;
p4=p1*T4/T1;
disp(p4,"pressure in atm");
neta=1-(u4-u1)/(h3-h2);
disp(neta*100,"thermal efficiency in %");
W=(h3-u4-h2+u1);//Wcycle/m
V1=R*T1/29.97/10^5;
mep=W/V1/(1-1/k)*1000/10^6;
disp(mep,"mean effective pressure in MPa");
clear()
