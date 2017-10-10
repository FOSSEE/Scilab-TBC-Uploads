//Example 11.6(a)
clc;
//Given values of bridge elements
R1=10000;
R2=50000;
R3=100000;
C3=100*10^-6;
//We Know Balanced bridge equations as
//    R1*R3=R2*R4
Rx=R2*R3/R1;
//For the calculation of Capacitance
//we have R1*C3=R2*Cx
Cx=C3*R1/R2;
disp(Rx,Cx,'The unknown impedence is the series combination of Cx & Rx')