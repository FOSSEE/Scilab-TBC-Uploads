//Example 11.10(e)
clc;

//Given values of bridge elements
R3=100;
C2=100*10^-12;
R4=300;
C4=0.5*10^-6;
f=50;           //frequency in Hz
//Value of C1 for Schering's Bridge
C1=C2*R4/R3;
//Power factor
D=2*%pi*f*C4*R4;
disp(C1,'Value of Capacitance is ')
printf('\nPower Factor is %.4f \n',D)