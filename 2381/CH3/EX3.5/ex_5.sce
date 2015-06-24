//Example 5 // Resonent frequency and Separation
clc;
clear;
close;
//given data :
L=1*10^-3;// in H
C=0.1*10^-6;// in F
w0=1/sqrt(L*C);
disp(w0,"Resonant frequency,w0(rad/s)  = ")
R=10;// in ohm
w2_w1=R/L;
disp(w2_w1,"the separation,(rad/s) = ")
S=w0/w2_w1;
disp(S,"The sharpness is = ")
