// Exa 6.1
clc;
clear;
close;
// Given Data
f_H= 2;// in kHz
f_H= f_H*10^3;// in Hz
C=0.01;// in micro F
C=C*10^-6;// in F
R= 1/(2*%pi*f_H*C);// in ohm
R=R*10^-3;// in kohm
// R may be taken a pot of 10 k ohm
R=10;// in k ohm
// Since the passbond gain is 2.5, so
// 1+Rf/R1= 2.5 or Rf= 1.5*R1
// Since Rf||R1
R1= R*2.5/1.5;// in k ohm
Rf= R1*1.5;// in k ohm
disp("Value of R1 is : "+string(R1)+" k ohm")
disp("Value of Rf is : "+string(Rf)+" k ohm")




