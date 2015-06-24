// Exa 7.10
clc;
clear;
close;
format('v',7);
// Given data
f=25;//in kHz
f=f*10^3;// in Hz
R1=3.1*10^3;//in ohm
R2=25*10^3;//in ohm
R4=100*10^3;//in ohm
C1=5.2*10^-6;//in F
omega= 2*%pi*f;
// From C3/C1= R2/R4-R1/R3
// C3= C1*(R2/R4-R1/R3)         (i)
// and omega= 1/sqrt(R1*R3*C1*C3)
// R3= 1/(omega^2*R1*C1*C3), putting this value in (i)
C3= C1*R2/(R4*(1+R1^2*C1^2*omega^2));// in F
disp(C3*10^12,"Equivalent capacitance in µµF")
R3= 1/(omega^2*R1*C1*C3);// in ohm
disp(R3*10^-3,"Equivalent parallel resistance in kohm")


// Note Evaluating the value of C3 in the book is wrong.
