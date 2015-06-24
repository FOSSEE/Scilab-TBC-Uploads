// Exa 5.19
clc;
clear;
close;
// Given data
f_c = 2;// in kHz
f_c = f_c * 10^3;// in Hz
A_F = 10;
Q = 4;
C = 0.01;// in µF
C = C * 10^-6;// in F
R1 = Q/(2*%pi*f_c*C*A_F);// in ohm 
R1 = R1 * 10^-3;// in k ohm
disp("The value of R1 is "+string(R1)+" kΩ (standard value 3.3 kΩ)");
R2 = Q/(2*%pi*f_c*C*(2*Q^2-A_F));// in ohm
R2 = R2 * 10^-3;// in k ohm
disp("The value of R2 is "+string(R2)+" kΩ (standard value 1.5 kΩ)");
R3 = Q/(%pi*f_c*C);// in ohm
R3 = R3 * 10^-3;// in k ohm
disp("The value of R3 is "+string(R3)+" kΩ (standard value 63 kΩ)");
f_c1 = 1;// in kHz
Rdesh2 = R2*(((f_c*10^-3)/f_c1)^2);// in k ohm
disp("The value of Rdesh_2 is "+string(Rdesh2)+" kΩ (standard value 5.8 kΩ)");
