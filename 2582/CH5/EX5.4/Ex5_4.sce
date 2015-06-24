//Ex 5.4
clc;clear;close;
f=1*1000;//HZ
Vs=15;//V
C=0.1;//micro F(Assumed)
R=1/(2*f*C*10^-6);//Hz
disp(R/1000,"For the required design value of R(kohm) : ");
disp("R1 & R2 can be choosen as 10 kohm");
///Answer in the book is wrong
