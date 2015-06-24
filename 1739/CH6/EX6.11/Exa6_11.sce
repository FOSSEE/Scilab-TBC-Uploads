//Exa 6.11
clc;
clear;
close;
//given data :
format('v',5);
//Given : Pint=0.3*P
nm=3.6;//refractive index of InP;unitless
n=1;//refractive index of air ;unitless
F=0.68;//Transmission factor at crystal-air interface
disp("ETAext=Pint*100*F*n^2/(4*P*nm^2)");
//Let F*n^2/(4*nm^2)=x
//Pint/P=0.3
//ETAext=0.3*x
x=100*F*n^2/(4*nm^2);
ETAext=0.3*x;
disp(ETAext,"External Power Efficiency in % : ");