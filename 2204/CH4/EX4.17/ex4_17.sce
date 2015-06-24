// Exa 4.17
clc;
clear;
close;
// Given data
f_max = 150;// in Hz
f_a = f_max;// in Hz
disp(f_a,"The value of f_a in Hz is : ")
C1 = 1;// in µF
C1 = C1 * 10^-6;// in F
R_F = 1/(2*%pi*f_a*C1);// in ohm
disp(R_F*10^-3,"The value of R_F in kΩ is");
f_b = 10*f_a;// in Hz
R1 = 1/(2*%pi*f_b*C1);// in ohm
C_F = (R1*C1)/R_F;// in F
disp(C_F*10^6,"The value of C_F in µF is");
R_comp = (R1*R_F)/(R1+(R_F));// in ohm
disp(R_comp,"The value of R_comp in Ω is");
