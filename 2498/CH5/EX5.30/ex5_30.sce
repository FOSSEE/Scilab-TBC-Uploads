// Exa 5.30
clc;
clear;
close;
format('v',6)
// Given data
L = 150;// in µH
L = L * 10^-6;// in H
// f = 1/(2*%pi*sqrt(L*C)) or C = 1/(4*%pi^2*f^2*L)
//For f= 500 kHz
f1 = 500;// in kHz
f1 = f1 * 10^3;// in Hz
C1 = 1/(4*%pi^2*f1^2*L);// in F
//For f= 1500 kHz
f2 = 1500;// in kHz
f2 = f2 * 10^3;// in Hz
C2 = 1/(4*%pi^2*f2^2*L);// in F
C1= C1*10^12;// in pF
C2= C2*10^12;// in pF
disp("The required capacitor range is : "+string(C2)+" pF to "+string(C1)+" pF")

// Note: The answer in the book is wrong.
