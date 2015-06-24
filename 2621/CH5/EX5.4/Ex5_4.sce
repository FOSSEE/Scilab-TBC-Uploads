// Example 5.4
clc;
clear;
close;
// Given data
format('v',5);
f= 700;// in Hz
C= 0.01;// in µF (assumed)
C= C*10^-6;// in F
// For 50% duty cycle, Ton= Toff = T/2 and R_A= R_B
// From equation, f= 1.44/((R_A+R_B)*C)= 1.44/(2*R_A*C)
R_A= 1.44/(2*f*C);// in Ω
R_A= R_A*10^-3;// in kΩ
R_B= R_A;// in kΩ
C= C*10^6;// in µF
disp(R_A,"The value of R_A and R_B in kΩ : ")
disp("(Standard value 100 kΩ)")
disp(C,"The value of C in µF is : ")
