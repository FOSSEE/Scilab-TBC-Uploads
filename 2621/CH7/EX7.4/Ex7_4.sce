// Example 7.4
clc;
clear;
close;
// Given data
format('v',5);
fc= 1*10^3;// in Hz
alpha= 1.414;
C= 0.1*10^-6;// in F (assume)
C_desh= C*alpha^2/4;// in F
C_desh= C_desh*10^6;// in µF
disp("The value of C'' is : "+string(C_desh)+" µF");
C_desh= C_desh*10^-6;// in F
R_desh= 1/(2*%pi*fc*sqrt(C*C_desh));// in Ω
R_desh= R_desh*10^-3;// in kΩ
disp("The value of R'' is : "+string(R_desh)+" kΩ (standard value 2.2 kΩ)")



