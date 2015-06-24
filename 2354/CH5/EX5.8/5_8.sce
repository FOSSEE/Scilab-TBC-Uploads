//example 5.8
clc; funcprot(0);
// Initialization of Variable
v1=1.3;
cp=1.005;
p1=1.01325*10^5;
T2=305;
T1=293;
pi=3.14;
Wcvdot=-98.0;
A1=1/v1*(-Wcvdot/cp/(T2-T1)/1000)*8314/28.97*T1/p1;
D1=sqroot(4*A1/pi)*100;
disp(round(D1),"minmum diameter required in cm");
clear()
