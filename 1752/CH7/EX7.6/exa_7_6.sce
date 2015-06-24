//Exa 7.6
clc;
clear;
close;
//given data
d=20*10^-2;//diameter of pipe in m
l=1;// length of pipe in m
s=30*10^-2;// side of duct in m
A1=%pi*d*l;// area of pipe in m^2
A2=4*s*s;// area of duct in m^2
epsilon1=0.8;
epsilon2=0.9;
T1=200+273;// in K
T2=20+273;// in K
// Formula Fg12=1/((1/epsilon1+(1/epsilon2-1)*A1/A2))
Fg12=1/((1/epsilon1+(1/epsilon2-1)*A1/A2));
// Heat transfer rate between pipe and duct
sigma=5.67*10^-8;
q12=sigma*Fg12*A1*(T1^4-T2^4);// in W
disp(q12,"Heat transfer rate between pipe and duct in W");

//Note: Answer in the book is wrong