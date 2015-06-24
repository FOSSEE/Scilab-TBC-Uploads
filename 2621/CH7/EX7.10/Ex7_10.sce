// Example 7.10
clc;
clear;
close;
// Given data
format('v',6);
f_L= 2*10^3;// in Hz
f_H= 2.5*10^3;// in Hz
Af= -5;
f_C= sqrt(f_L*f_H);// centre frequency in Hz
del_f= f_H-f_L;//bandwidth in Hz
Q= f_C/del_f;// selectivity
// Assume C1= C2= C= 0.01µF
C= 0.01*10^-6;// in F
R3= 1/(%pi*del_f*C);// in Ω
R3= R3*10^-3;// in kΩ
disp("The value of R3 is : "+string(R3)+" kΩ (standard value 64 kΩ)");
R3= 64;// in kΩ
R3= R3*10^3;// in Ω
R1= -R3/(2*Af);//in Ω
R2= R1/(4*%pi^2*f_C^2*R1*R3*C^2-.1)
R1= R1*10^-3;// in kΩ
C=C*10^6;// in µF
disp("The value of R1 is : "+string(R1)+" kΩ ");
disp("The value of R2 is : "+string(R2)+" kΩ (standard value 800Ω)");
disp("The value of C is : "+string(C)+" µF ");

