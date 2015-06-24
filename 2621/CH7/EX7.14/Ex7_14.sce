// Example 7.14
clc;
clear;
close;
// Given data
format('v',5);
f_H= 200;// in Hz
f_L= 2*10^3;// in Hz
C= 0.05*10^-6;// in F
// For low-pass filter,
R_desh= 1/(2*%pi*f_H*C);// in Ω
R_desh= R_desh*10^-3;// in kΩ
disp("The value of R'' is : "+string(R_desh)+" kΩ ( Approx. 20 kΩ)")
// For high-pass filter,
R= 1/(2*%pi*f_L*C);// in Ω
R= R*10^-3;// in kΩ
disp("The value of R is : "+string(R)+" kΩ ( Approx. 2 kΩ)")

