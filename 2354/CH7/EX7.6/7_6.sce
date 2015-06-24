//example 7.6
clc; funcprot(0);
// Initialization of Variable
T2=635;//temperature
T1=530;//temperature
T3=460;//temperature
P2=1;//pressure
P3=1;//pressure
P1=5.1;//pressure
cp=0.24;
R=1.986/28.97;
k1=-105;//T1-T2
k2=70;//T1-T3
a=0.4*k1+0.6*k2;
disp(a,"since  mass is conserved thus value is ");
k=0.4*(cp*log(T2/T1)-R*log(P2/P1))+0.6*(cp*log(T3/T1)-R*log(P3/P1));
disp(k,"sigmacvdot/m1dot in Btu/lb/R");
disp("thus second law of thermodynamics is also conserved");
clear()
