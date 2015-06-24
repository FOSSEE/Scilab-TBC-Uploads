// Exa 5.24
clc;
clear;
close;
// Given data
f1 = 5;// in kHz
f1 = f1 * 10^3;// in Hz
f2 = 15;// in kHz
f2 = f2 * 10^3;// in Hz
Cdesh = 0.01;// in µF
Cdesh= Cdesh * 10^-6;// in F
Rdesh = 1/(2*%pi*f2*Cdesh);// in ohm
A_F1 = 1.414;
A_F2 = A_F1;
Rdesh1 = 10;// in k ohm
Rdesh_F = (A_F1-1)*Rdesh1;// in k ohm
disp("(i) Low pass Filter components : ")
disp(Rdesh1,"The value of Rdesh1 in kΩ is : ")
disp(Rdesh*10^-3,"The value of Rdesh in kΩ is : ")
disp(Rdesh_F,"The value of Rdesh_F in kΩ is : ")
disp(Cdesh*10^6,"The value of Cdesh in µF is");
C = 0.05;// in µF
C = C * 10^-6;// in F
R = 1/(2*%pi*f1*C);//in ohm
R1 = 10;// in k ohm
R_F = (A_F1-1)*R1;// in k ohm
disp("(ii) High pass Filter components : ")
disp(R1,"The value of R1 in kΩ is : ");
disp(R,"The value of R in Ω is : ");
disp(R_F,"The value of R_F in kΩ is : ");
disp(C*10^6,"The value of C in µF  is : ");
