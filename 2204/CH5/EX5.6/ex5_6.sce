// Exa 5.6
clc;
clear;
close;
// Given data
f_c = 2;// in kHz
f_c = f_c * 10^3;// in Hz
C2 = 0.033;// in µF
C2 = C2 * 10^-6;// in F
C3 = C2;// in F
C = C2;// in F
R2 = 1/(2*%pi*f_c*C);// in ohm
R2 = R2 * 10^-3;// in k ohm
R3=R2;// in kohm
disp(R2,"The value of R2 and R3 in kΩ is : ");
//R_F= 0.586*R1
R1= 2*R2*(1+0.586)/0.586;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
R1= 15;// in k ohm
R_F = 0.586 * R1;// in k ohm
disp(R_F,"The value of R_F in kΩ is : ");
disp("R_F may be taken as a pot of 10 kΩ")
