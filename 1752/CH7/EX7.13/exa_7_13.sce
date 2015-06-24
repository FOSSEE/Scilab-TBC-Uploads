//Exa 7.13
clc;
clear;
close;
format('v',6)
//given data
T1=800;// in K
T3=200;// in K
sigma=5.67*10^-8;
d1=20*10^-2;// in m
d2=30*10^-2;// in m
d3=40*10^-2;// in m
A1=4*%pi*(d1/2)^2;// in m^2
A2=4*%pi*(d2/2)^2;// in m^2
A3=4*%pi*(d3/2)^2;// in m^2
epsilon1=0.2;
epsilon2=epsilon1
epsilon3=epsilon1
Fg12=1/(1/epsilon1+(1/epsilon2-1)*A1/A2);
Fg23=1/(1/epsilon2+(1/epsilon3-1)*A2/A3);
// Under steady state condition 
// q12 = q23
// A1*Fg12*sigma*(T1^4-T2^4) = A2*Fg23*sigma*(T2^4-T3^4)
T2 = ((A2*Fg23*T3^4/(A1*Fg12)+T1^4)/(A2*Fg23/(A1*Fg12) + 1))^(1/4)
disp(T2,"Steady state temperature of the intermediate sphere in K");
