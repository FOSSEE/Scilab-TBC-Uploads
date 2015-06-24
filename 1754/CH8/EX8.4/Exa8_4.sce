//Exa 8.4
clc;
clear;
close;
//Given data
R=100;//in kOhm
R=R*10^3;//in Ohm
C=0.01;//in uF
C=C*10^-6;//in F
fo=sqrt(6)/(2*%pi*R*C);//in Hz
disp(fo,"Frequency of oscillation in Hz : ");
//Note : Answer in the book is not accurate.