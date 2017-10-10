//Example 11.10(c)
clc;

//Given values of bridge elements
R3=300;
C2=500*10^-12;
R4=100;
C4=0.1*10^-6;
f=50;        //frequency in Hz
//Value of C1 for Schering's Bridge
C1=C2*R4/R3;
//Dielectric loss angle
D=2*%pi*f*C4*R4;
atan(D);
delta=180*D/%pi;
disp(C1,'Value of Capacitance is ')
printf('\nDielectric loss angle is %.4f deg',delta )