// Example 5.3
clc;
clear;
close;
// Given data
format('v',6);
C= 0.01;// in µF
C= C*10^-6;// in F
f= 1;// in kHz
f= f*10^3;// in Hz
// For 50% duty cycle, Ton= Toff = T/2 and R_A= R_B
// From equation, f= 1.44/((R_A+R_B)*C)= 1.44/(2*R_A*C)
R_A= 1.44/(2*f*C);// in Ω
R_A= R_A*10^-3;// in kΩ
R_B= R_A;// in kΩ
disp(R_A,"The value of R_A and R_B in kΩ : ")
disp("(Standard value 68 kΩ)")
