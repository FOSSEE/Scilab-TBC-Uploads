// Exa 5.2
clc;
clear;
close;
// Given data
C1= 5; // in pF
C1= C1*10^-12;// in F
C2= 50; // in pF
C2= C2*10^-12;// in F
L= 10;// in mH
L= L*10^-3;// in H
TuningRange= 1/(2*%pi*sqrt(L*C1*C2/(C1+C2)));// in Hz
disp(TuningRange*10^-3,"The tuning range for the circuit in kHz is : ")

// Note : In the book, this example is not solved. Only given data is shown.
