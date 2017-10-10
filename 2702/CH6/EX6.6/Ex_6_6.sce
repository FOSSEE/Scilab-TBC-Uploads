// Exa 6.6
clc;
clear;
close;
// Given data
L= 15;// in µH
L= L*10^-6;// in H
C1= .004;// in µF
C1= C1*10^-6;// in F
C2= .04;// in µF
C2= C2*10^-6;// in F
C= C1*C2/(C1+C2);// in F
f= 1/(2*%pi*sqrt(L*C));// in Hz
disp(f*10^-3,"Frequency of oscillations in kHz is : ")
