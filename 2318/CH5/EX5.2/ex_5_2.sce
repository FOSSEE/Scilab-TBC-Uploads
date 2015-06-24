//Example 5.2: Coulomb sensitivity
clc;
clear;
close;
//given data :
C=1.5*10^-6;// in F
V=15;// in V
d1=20;// in cm
Q=C*V;
Sb=(d1/Q)*10^-5;
disp(Sb,"Coulomb sensitivity,Sb(mm/micro-C)")
