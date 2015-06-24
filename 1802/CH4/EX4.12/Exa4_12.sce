//Exa 4.12
clc;
clear;
close;
//Given Data :
format('v',5);
d1=4*100;//in cm
d2=5*100;//in cm
d3=6*100;//in cm
r=1;//in cm
ds=0.7788*r;//in cm
L=[0.2*log((d1*d2*d3)^(1/3)/ds)];//in mH
disp(L*10^3,"Inductance per km(in uH) :");
//Note : answer in the book is wrong.