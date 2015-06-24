// Exa 5.18 printed as 5.15
clc;
clear;
close;
// Given data
Cdesh = 0.01;// in µF
Cdesh= Cdesh* 10^-6;// in F
f_H = 1;// in kHz
f_H = f_H * 10^3;// in Hz
Rdesh= 1/(2*%pi*f_H*Cdesh);// in ohm
A_F2 = 2;
R1desh = 10*10^3;// in ohm
Rdesh_F= R1desh;// in ohm
disp("(i) Low-pass Filter Components : ")
disp(R1desh*10^-3,"The value of R1desh in kΩ is");
disp(Rdesh*10^-3,"The value of Rdesh in kΩ is : ");
disp(Rdesh_F*10^-3,"The value of Rdesh_F in kΩ is :  ");
disp(Cdesh*10^6,"The value of C in µF is ");
C = 0.05;// in µF
C = C * 10^-6;// in F
f_L = 100;// in Hz
R = 1/(2*%pi*f_L*C);// in ohm
A_F1 = 2;
R1 = 10*10^3;// in ohm
R_F = R1;// in ohm
disp("(ii) High pass Filter Components")
disp(R1*10^-3,"The value of R1 in kΩ is");
disp(R*10^-3,"The value of R in kΩ is");
disp(R_F*10^-3,"The value of R_F in kΩ is");
disp(C*10^6,"The value of C in µF is ");
Q = sqrt(f_H*f_L)/(f_H-f_L);
disp(Q,"The quality factor is");

// Note : In High pass filter components, the value of R is calculated 31.83 kΩ but at last it is writter as 3.183 kΩ so the answer of R in High pass filter components is wrong.
