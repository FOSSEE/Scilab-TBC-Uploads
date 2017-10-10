//Example 11.6(b)
clc;
f=400;    //given frequency in Hz
//Given values of bridge elements
R1=2000;
R2=2850;
R4=52;
C4=0.5*10^-6;
//We Know Balanced bridge equations as
Rx=R1*R4/R2;
//For the calculation of Capacitance
//we have R2*C4=R1*Cx
Cx=C4*R2/R1;
disp(Rx,Cx,'The unknown impedence is the series combination of Cx & Rx')