// Exa 6.2
clc;
clear;
close;
// Given data
R1= 50;// in kohm
R1=R1*10^3;// in ohm
R2=R1;// in ohm
R3=R2;// in ohm
C1= 60;// in pF
C1= C1*10^-12;// in F
C2=C1;// in F
C3=C2;// in F
f= 1/(2*%pi*R1*C1*sqrt(6));
disp(f*10^-3,"Frequency of oscilltions in kHz is : ")
