// Exa 5.16
clc;
clear;
close;
// given data 
fo=1;// in KHz
// choose C=.01 uF
C=.01;// in uF
R=1/(2*%pi*sqrt(6)*fo*1000*C*10^-6);// in ohm
disp("Choose the value of R1 to get RF, while considering that R1 >= 10*R to avoid loading effect. Thus choosing R1=35.6 Kohm");
R1=35.6;// in  Kohm
RF=29*R1;//in ohm
disp("Hence desired components values are :");
disp(C,"Value of C in uF is ; ");
disp(R/1000,"Value of R in Kohm is ; ");
disp(R1,"Value of R1 in Kohm is ; ");
disp(RF/1000,"Value of RF in Mohm is ; ");
// Note : Answer in the book is wrong