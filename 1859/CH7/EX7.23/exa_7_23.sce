// Exa 7.23
clc;
clear;
close;
// Given data
fr= 2;// in MHz
fr=fr*10^6;// in Hz
C=230+8;// in pF
C=C*10^-12;// in F
// Formula fr= 1/(2*%pi*sqrt(L*C))
L= 1/((2*%pi*fr)^2*C);// in H
disp(L*10^6,"Value of L in µH")
// From the first set of data
fr= 1;// in MHz
fr=fr*10^6;// in Hz\
C= 1/((2*%pi*fr)^2*L);// in F
disp(C*10^12,"Value of C in pF")
