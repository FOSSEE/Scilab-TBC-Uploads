// Exa 5.17
clc;
clear;
close;
// given data 
fo=1;// in KHz
// choose C=.01 uF
C=.01;// in uF
R=1/(2*%pi*fo*1000*C*10^-6);// in ohm
// choosing R1=10 Kohm
R1=10;// in Kohm
RF=2*R1;//in Kohm
disp("Hence desired components values are :");
disp(C,"Value of C in uF is ; ");
disp(R/1000,"Value of R in Kohm is ; ");
disp(R1,"Value of R1 in Kohm is ; ");
disp(RF,"Value of RF in Kohm is ; ");