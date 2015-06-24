//Exa 1.6
clc;
clear;
close;
//given data :
le=50;//in m
f=100;//in MHz
lambda=300/(f);//in m
Rr=(160*(%pi)^2)*(le/lambda)^2;//in Ohm
disp(Rr/10^6,"Radiation Resistance in Mohm: ");
//Note : Answer in the book is wrong