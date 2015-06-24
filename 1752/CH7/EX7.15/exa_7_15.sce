//Exa 7.15
clc;
clear;
close;
format('v',9)
//given data
d1=100;// in mm
d1=d1*10^-3;// in m
d2=100+10*2;// in mm
d2=d2*10^-3;// in m
l=1;// in m
A1byA2=d1^2/d2^2;
A1=%pi*d1*l;// in m^2
sigma=5.67*10^-8;
T1=120+273;// in K
T2=35+273;// in K
epsilon1=.8;
epsilon2=.1;
Fg12=1/(1/epsilon1+(1/epsilon2-1)*A1byA2);
// Radiant heat transfer from the tube
q=A1*Fg12*sigma*(T1^4-T2^4)
disp(q," Radiant heat transfer from the tube in W/m");


//Note: Answer in the book is wrong