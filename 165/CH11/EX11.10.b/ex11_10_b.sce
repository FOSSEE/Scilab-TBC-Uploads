//Example 11.10(b)
clc;

//Given values of bridge elements
R3=100;
C2=100*10^-12;
R4=300;
C4=0.5*10^-6;
f=50;        //frequency in Hz
//Value of R1 for Schering's Bridge
R1=C4*R3/C2;
//Value of C1 for Schering's Bridge
C1=C2*R4/R3;
//Dissipation factor
D=2*%pi*f*C1*R1;

printf('\nValue of resistence is %d ohm',R1)
disp(C1,'Value of Capacitance is ')
printf('\nDissipation factor for Schering bridge is %.4f ',D )