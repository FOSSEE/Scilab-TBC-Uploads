// Example 7.15
clc;
clear;
close;
// Given data
format('v',5);
C= 0.068*10^-6;// in F
f_N= 50;// in Hz
R= 1/(2*%pi*f_N*C);// in Ω
R= R*10^-3;// in kΩ
disp("The value of R is : "+string(R)+" kΩ ( Approx. 50 kΩ)")

