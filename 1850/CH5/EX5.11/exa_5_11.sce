// Exa 5.11
clc;
clear;
close;
// Given data
C=0.01;// in micro F
C=C*10^-6;// in F
omega= 10000;// in  rad/second
// Vout/V1= (Rf/R1)/(1+s*C*Rf)
// substituting s= j*omega we have
// Vout/V1 = (Rf/R1)/sqrt((omega*C*Rf)^2+1)
// At omega=0
// Vout/V1= Rf/R1
// Formula omega= 1/(C*Rf)
Rf= 1/(C*omega);// in ohm
Rf= Rf*10^-3;// in k ohm
// 20*log10(Rf/R1) = 20
R1= Rf/10;// in k ohm
disp(Rf,"Value of Rf in k ohm");
disp(R1,"Value of R1 in k ohm");
