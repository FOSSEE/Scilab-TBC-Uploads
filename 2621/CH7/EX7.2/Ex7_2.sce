// Example 7.2
clc;
clear;
close;
// Given data
format('v',6);
f_H= 2*10^3;//cut-off frequency in Hz
C= 0.033*10^-6;// in F
R= 1/(2*%pi*f_H*C);// in Ω
// 2*R= Rf*R1/(Rf+R1)= 0.586*R1^2/(1.586*R1) since Rf= 0.586*R1
R1= 2*R*1.586/0.586;// in Ω
R1= round(R1*10^-3);// in kΩ
disp("The value of R1 is : "+string(R1)+" kΩ");
disp("(The value of R1 may be taken of 15 kΩ)");
R1= 15;// in kΩ
Rf= R1*0.586;// in kΩ
//Rf= floor(1.5*R1);// in kΩ
disp("The value of Rf is : "+string(Rf)+" kΩ");
disp("(The value of Rf may be taken as a pot of 10 kΩ)");




