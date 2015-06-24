//example 7.5
clc; funcprot(0);
// Initialization of Variable
k1=540.0;//Wcv/m
h2=2676.1;
h1=3230.9;
V2=100;
V1=160;
s2=7.3549;
s1=6.9212;
k2=k1+(h2-h1)+(V2^2/2-V1^2/2)/1000;
disp(k2,"Qcvdot/mdot in kJ/kg");
k3=-k2/350+(s2-s1);
disp(k3,"sigmacvdot/mdot in kJ/kg/K");
clear()
