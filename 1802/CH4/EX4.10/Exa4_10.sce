//Exa 4.10
clc;
clear;
close;
//Given Data :
format('v',9);
d1=2;//in cm
d2=2.5;//in cm
d3=4.5;//in cm
r=1.24/2;//in cm
L=10^-7*[0.5+2*log((d1*d2*d3)^(1/3)/r)];//in H/m
L=L*1000*1000;//in mH/km
disp(L,"Inductance per km(in mH) :");
//Note : Answer in the book is wrong(calculation mistake).