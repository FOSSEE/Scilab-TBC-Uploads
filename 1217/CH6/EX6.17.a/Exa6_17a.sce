// Exa 6.17a
clc;
clear;
close;
// given data 
R=10;//in Kohm
R1=R;//in Kohm
R2=R;//in Kohm
R3=R;//in Kohm
Rf=5.6;//in Kohm
R4=Rf;//in Kohm
R5=Rf;//in Kohm
RA=2.7;//in Kohm
RB=1.5;//in Kohm
C=0.01;//in uF
C1=C;//in uF
C2=C;//in uF
alfa=3*RB/(RA+RB);
disp("The type of response will be determined by the value of damping coefficient.");
disp(alfa,"Value of alfa is :");
disp("This value correspondes to the chebyshev response.");