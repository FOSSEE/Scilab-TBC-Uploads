// Exa 1.b
clc;
clear;
close;
// Given data
R1= 10;// in kΩ
R2= 10;// in kΩ
Rf= 50;// in kΩ
V= 2;// in V
V1= V*R1/(R1+R2);// in V
V01= -Rf/R1*V1;// in V
disp(V1,"The value of V1 in volts is : ")
disp(V01,"The value of V01 in volts is : ")
disp("Only 2 V source then the circuit acts as non-inverting amplifier")
