// Example 7.7
clc;
clear;
close;
// Given data
format('v',6);
R= 2.1*10^3;// in kΩ
C= 0.05*10^-6;// in F
R1= 20*10^3;// in Ω
Rf= 60*10^3;// in Ω
// Low cut-off frequency,
f_L= 1/(2*%pi*R*C);// in Hz
f_L= f_L*10^-3;// in kHz
disp(f_L,"The cut-off frequency in kHz is : ")



