// Example 12.4
format('v',6)
clc;
clear;
close;
// given data
R_D= 7.5;// in kΩ
R_L= 3;// in kΩ
r_s= R_D*R_L/(R_D+R_L);// in kΩ
r_s= r_s*10^3;// in Ω
gm= 2500*10^-6;// in S
// The voltage gain 
A= gm*r_s/(1+gm*r_s);// unit less
disp(A,"The voltage gain is : ")
