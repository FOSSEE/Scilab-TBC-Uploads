//Example 11.8(a)
clc;

//Given values of bridge elements
R1=470000;
R2=5100;
R3=100000;
C1=0.01*10^-6;
//We Know Balanced bridge equations as
Rx=R2*R3/R1;
//For the calculation of Capacitance
//we have Lx=R2*R3*C1
Lx=R2*R3*C1;
disp(Rx,Lx,'The unknown impedence is the series combination of Lx & Rx')