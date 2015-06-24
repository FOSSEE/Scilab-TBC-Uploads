// Example 7.13
clc;
clear;
close;
// Given data
format('v',5);
f_L= 200;// in Hz
f_H= 1*10^3;// in Hz
alpha=4;// passband gain
C_desh= 0.01*10^-6;// in F (assume)
R_desh= 1/(2*%pi*f_H*C_desh);// in Ω
R_desh= R_desh*10^-3;// in kΩ
disp("The value of R'' is : "+string(R_desh)+" kΩ (Approx. 20 kΩ)")
R_desh= 20;// in kΩ (standard value)
// First Order High-Pass Filter
C= 0.05*10^-6;// in F (assume)
R= 1/(2*%pi*f_L*C);// in Ω
R= R*10^-3;// in kΩ
R1= 10;// in kΩ
Rf= R1;// in kΩ
C_desh= C_desh*10^6;// in µF
C= C*10^6;// in µF
disp("The value of R is : "+string(R)+" kΩ (Approx. 20 kΩ)")
R= 20;// in kΩ (standard value)
disp("The value of R1 and Rf is : "+string(R1)+" kΩ")
disp("The value of C'' is : "+string(C_desh)+" µF")
disp("The value of C is : "+string(C)+" µF")



