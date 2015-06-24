// Exa 5.4
clc;
clear;
close;
// Given data
V1= 2;// in volt
V2= -1;// in volt
// Let R1= (R||R)/(R+(R||R))= (R/2)/(R+R/2) = 1/3
R1=1/3;
Vs1= V1*R1;// in volt
// Let R2= (1+Rf/R)= (1+2*R/R)= 3
R2= 3;
Vo_desh= Vs1*R2;// in volt
Vs2= V2*R1;// in volt
Vo_doubleDesh= Vs2*R2;// in volt
V_out= Vo_desh+Vo_doubleDesh;// in volt
disp(V_out,"Output voltage in volt")
