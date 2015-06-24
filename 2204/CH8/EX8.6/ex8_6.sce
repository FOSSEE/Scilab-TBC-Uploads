// Exa 8.6
clc;
clear;
close;
// Given data
VTO= 0.43;// in V
VDD= 2.5;// in V
g=0.5; // value of gamma
//VDD-Vx-VT= VDD-Vx-(VTO+g*(sqrt(0.6+Vx)-sqrt(0.6)))=0
//Vx^2+Vx*(2*A-g^2)+(A-0.6*g^2)=0, where
A=VTO-VDD-g*sqrt(0.6);// assumed
B= (2*A-g^2);// assumed
C=(A^2-0.6*g^2);//assumed
Vx= [1 B C];
Vx= roots(Vx);// in V
Vx= Vx(2);// in V
disp(Vx,"The value of Vx in volts is : ")
