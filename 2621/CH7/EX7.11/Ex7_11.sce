// Example 7.11
clc;
clear;
close;
// Given data
format('v',6);
f_C= 1*10^3;//centre frequency in Hz
f_C_desh= 2*10^3;//new centre frequency in Hz
Q= 5;// selectivity
Af= -8;
C= 0.01*10^-6;// in F (assume)
R3= Q/(%pi*f_C*C);//in Ω
R3= R3*10^-3;// in kΩ
disp("The value of R3 is : "+string(R3)+" kΩ (160 kΩ (approx))");
R1= round(-R3/(2*Af));// in kΩ
disp("The value of R1 is : "+string(R1)+" kΩ");
R2= R1*10^3/(4*%pi^2*f_C^2*R1*10^3*R3*10^3*C^2-1);// in Ω
R2= R2*10^-3;// in kΩ
disp("The value of R2 is : "+string(R2)+" kΩ (2 kΩ (approx))");
R2= 2;// in kΩ (approx)
R2_desh= R2*(f_C/f_C_desh)^2;// in kΩ
R2_desh= R2_desh*10^3;// in Ω
disp("The value of R2'' is : "+string(R2_desh)+" Ω")

