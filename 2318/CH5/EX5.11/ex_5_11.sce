//Example 5.11 // Fluxmeter deflection
clc;
clear;
close;
//given data :
l=5*10^-2;// in m
N=40;// turns
B=5*10^-3;// in Wb/m^2
b=1.5*10^-2;// in m
cs=2*10^-4;// in  m^2
B1=0.05;// in Wb/m^2
fi=B1*cs;
del_fi=2*fi;
theta=(del_fi*10)/(N*B*l*b);
disp((theta*(180/%pi)),"Fluxmeter deflection,(degree) = ")
