//Example 7.7.a // determine the value of capacitance 
clc;
clear;
close;
//given data :
A=300; // plates of area in mm^2
eo=8.85*10^-12; // in F/m
er1=1;
er2=8; //  dielectric contant of mica
d=0.2; // 
C=((eo*er1*10^-6*A)/(d*10^-3))*10^12;
disp(C,"capacitance,C(pF) = ")
