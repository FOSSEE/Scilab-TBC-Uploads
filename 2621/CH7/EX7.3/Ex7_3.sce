// Example 7.3
clc;
clear;
close;
// Given data
format('v',7);
f_H= 1*10^3;//cut-off frequency in Hz
C= 0.0047*10^-6;// in F
R= 1/(2*%pi*f_H*C);// in Ω
R= (R*10^-3);// in kΩ
R1= 30;// in kΩ (assume)
Rf= 0.586*R1;// in kΩ
C= C*10^6;// in µF
disp("The value of R''= R= "+string(R)+" kΩ (standard value 33 kΩ)");
disp("The value of C''= C= "+string(C)+" µF ");
disp("The value of R1=  "+string(R1)+" kΩ ");
disp("The value of Rf=  "+string(Rf)+" kΩ (standard value 20 kΩ pot) ");




