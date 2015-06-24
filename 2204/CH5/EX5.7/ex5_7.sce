// Exa 5.7
clc;
clear;
close;
// Given data
f_c = 1;// in kHz
f_c = f_c * 10^3;// in Hz
C2 = 0.0047;// in µF
C2 = C2 * 10^-6;// in F
C3 = C2;// in F
C = C2;// in F
R2 = 1/(2*%pi*f_c*C);// in ohm
R2 = R2 * 10^-3;// in k ohm
R3= R2;// in kohm
// Let
R1=30;// in kohm
R_F= R1*0.586;// in kohm
disp(floor(R2),"The value of R2 and R3 in kΩ is : ")
disp(R1,"The value of R1 in kΩ is : ")
disp(R_F,"The value of R_F in kΩ is : ")
disp("The standard value of R_F is 20 kΩ")
