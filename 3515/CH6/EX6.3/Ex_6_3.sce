// Exa 6.3
format('v',5);
clc;
clear;
close;
// Given data
f=2;// in kHz
f=f*10^3;// in Hz
// Let
R= 10;// in kohm   (As R should be greater than 1 kohm)
R=R*10^3;// in ohm
// Formula f= 1/(2*%pi*R*C)
C= 1/(2*%pi*f*R);// in F
C= C*10^9;// in nF
// For Bita to be 1/3, Choose
R4= R;// in ohm
R3= 2*R4;// in ohm
disp(C,"Value of C in nF is : ")
disp(R3*10^-3,"Value of R3 in kohm is : ")
disp(R4*10^-3,"Value of R4 in kohm is : ")

