//Exa 4.9
clc;
clear;
close;
//Given Data :
format('v',9);
d1=100;//in cm(spacing)
d2=100;//in cm(spacing)
d3=100;//in cm
r=1;//in cm
L=10^-7*[0.5+2*log((d1*d2*d3)^(1/3)/r)];//in H/m
L=L*1000*1000;//in mH/km
disp(L,"Inductance per km(in mH) :");
//Note : Answer in the book is wrong due to calculation mistake.
//Note : In the last line it should be multiply by 10^6 to convert from H/m to mH/km instead of 10^8.