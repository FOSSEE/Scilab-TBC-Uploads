// Exa 5.11
clc;
clear;
close;
// given data 
T=100;// in uSec
C=15;//in 
R=T*10^-6/(1.1*C*10^-9);//in ohm
disp(R/1000,"To obtain a output pulse at 100uSec rsistor required in Kohm is :")
//Note : in the question 15uF is given but in the solution 15nF is used in the book