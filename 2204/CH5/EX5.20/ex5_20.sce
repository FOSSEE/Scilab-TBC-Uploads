// Exa 5.20 Printed as 5.17
clc;
clear;
close;
// Given data
f_H = 100;// in Hz
f_L = 2;// in kHz
f_L = f_L * 10^3;// in Hz
C = 0.01;// in µF
C = C * 10^-6;// in F
R = 1/(2*%pi*f_L*C);// in ohm
R = R * 10^-3;// in k ohm
A_F = 2;
R1 = 10;// in k ohm
// A_F= 1+R_F/R1 or
R_F= (A_F-1)*R1;// in k ohm
disp("(i) High-pass Section Components : ")
disp(C*10^6,"The value of C in µF is : ")
disp(R,"The value of R in kΩ is");
disp(R_F,"The value of R_F and R1 in kΩ is");
Cdesh = 0.1;// in µF
Cdesh= Cdesh* 10^-6;// in F
Rdesh = 1/(2*%pi*f_H*Cdesh);// in ohm
Rdesh= Rdesh * 10^-3;// in k ohm
Rdesh1 = 10;// in k ohm
Rdesh_F= Rdesh1;// in k ohm
disp("(ii) Low-pass Section components : ")
disp(Cdesh*10^6,"The value of Cdesh in µF is : ")
disp(Rdesh,"The value of Rdesh in kΩ is");
disp(Rdesh_F,"The value of Rdesh_F and Rdesh1 in kΩ is");
R2 = 10;// in k ohm
R3 = R2;// in k ohm
R4 = R2;// in k ohm
R_OM = (R2*R3*R4)/(R2*R3+R3*R4+R4*R2);// in k ohm
disp("(iii) Summing Amplifier component")
disp(R_OM,"The value of R_OM in kΩ is");
