// Exa 13.4
clc;
clear;
close;
// Given data
f = 700;// in Hz
C = 0.01;// in µF
C = C * 10^-6;// in F
a = 1.44;
R_A = a/(2*f*C);// in ohm
R_A = R_A * 10^-3;// in k ohm
R_B =R_A;// in k ohm
disp(C*10^6,"The the value of C in µF is : ")
disp(R_A,"The value of both the resistors in kΩ is");
disp("(Standard value of resistor is 100 kΩ)")
