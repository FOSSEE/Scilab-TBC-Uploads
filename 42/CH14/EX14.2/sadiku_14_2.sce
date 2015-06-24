clear;
clc;
format('v',6)
d=80*(10)^-6;
n1=1.62,NA=.21,L=8*(10)^-7 ;
P=asind(NA);
disp(P,'Acceptance angle');
n2=sqrt(n1^2 - NA^2);
disp(n2,'Refractive index');
V=(%pi*d/L)*sqrt(n1^2 - n2^2);
disp(V,'No of modes');
