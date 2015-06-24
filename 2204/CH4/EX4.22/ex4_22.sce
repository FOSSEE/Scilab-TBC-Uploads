// Exa 4.22
clc;
clear;
close;
// Given data
R = 100;// in ohm
T = 25;// in degree C
alpha = 0.00392;
R1 = R*(1+(alpha*T));// in ohm
expression= 'R_T= Ro*[1+alpha*T]';
disp(expression,"The expression for the resistance at T°C is : ")
disp(R1,"The transducer resistance at 25°C in Ω is");
T = 100;// in degree C
R2 = R*(1+(alpha*T));// in ohm
disp(R2,"The transducer resistance at 100°C in Ω is");
