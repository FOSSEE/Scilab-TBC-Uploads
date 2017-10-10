//Example 11.7
clc;
f=5000;    //given frequency in Hz
//Given values of bridge elements
R1=10000;
R2=40000;
R3=100000;
L3=10*10^-3;
//We Know Balanced bridge equations as
Rx=R2*R3/R1;
//For the calculation of Inductance
//we have R2*L3=R1*Lx
Lx=L3*R2/R1;
disp(Rx,Lx,'The unknown impedence is the series combination of Lx & Rx')