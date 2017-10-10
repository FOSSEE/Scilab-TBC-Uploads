// Exa 6.4
clc;
clear;
close;
// Given data
R1= 200;// in kohm
R1=R1*10^3;// in ohm
R2=R1;// in ohm
C1= 200;// in pF
C1= C1*10^-12;// in F
C2=C1;// in F
f= 1/(2*%pi*R1*C1);// in Hz
disp(f*10^-3,"Frequency of oscilltions in kHz is : ")

// Note: Calculation to find the value of f in the book is wrong, so answer in the book is wrong
