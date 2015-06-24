
//Example 13.3 // impedance
clc;
clear;
close;
//given data :
C3=0.124; // in micro-farad
R3=834; // in ohm
C4=0.1; // in micro-farad
f=2000; // in Hz
R2=100; // in ohm
L1=R2*R3*C4*10^-6;
R1=R2*(C4/C3);
X1=2*%pi*f*L1;
Z1=sqrt(R1^2+X1^2);
disp(R1,"resistance in ohms is")
disp(Z1,"impedance of the specimen,Z1(ohm) = ")
