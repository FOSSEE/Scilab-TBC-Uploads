//addition of harmonic motion
//Exa_2_11
clc;
clear;
close;

A=sqrt((10+15*cos(2))^2 + (15*sin(2))^2);

alpha=atand((15*sin(2))/(10+15*cos(2)));

disp("x(t)=R*%e^(i*(omega*t+alpha))");
disp("where ");
disp(A,"A =");
disp(alpha,"alpha =");