// Example 7.1
clc;
clear;
close;
// Given data
format('v',6);
f_H= 2*10^3;//cut-off frequency in Hz
C= 0.01*10^-6;// in F
passband_gain= 2.5;
R= 1/(2*%pi*f_H*C);// in Ω
R= 8.2;// in kΩ (standard value)
// 1+Rf/R1= passband_gain or Rf should be equal to 1.5*R1 since Rf||R1= R
R1= passband_gain/1.5*R;// in kΩ
disp("The value of R1 is : "+string(R1)+" kΩ");
disp("(Standard value 15 kΩ)");
Rf= floor(1.5*R1);// in kΩ
disp("The value of Rf is : "+string(Rf)+" kΩ");




