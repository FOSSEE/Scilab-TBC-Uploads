//To determine the Sag
clear
clc;
A=13.2;// cross section of conductor (mm_2)
Ar=4.1*(10^-3);// projected area
Wp=Ar*48.82;// wind loadind /m(kg/m)
w=.115;
W=sqrt((.1157^2) + (Wp^2));// effective loading per metre(kg)
q1=W/.115;
b=w/A;
f1=21;//working stress
T1=f1*A;
c=T1/W;
l=45.7;
S=l*l/(8*c);
dT=32.2-4.5;// difference in temperature
E=1.26*(10000);
a=16.6*(10^-6);
d=8.765*(10^-3);
K=f1-((l*d*q1)^2)*E/(24*f1*f1);
p=poly([-84.23 0 -14.44 1], 'f2', 'c');
r=roots(p);
f2= 14.823332;// accepted value of f2
T=f2*A;
c=T/w;
d1=l*l/(8*c);
mprintf("sag at 32.2 Celsius , d=%.4f metres",d1);
