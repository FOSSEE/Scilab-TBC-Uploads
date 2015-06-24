//Find Elastic Strain Energy
//Ex:6.4
clc;
clear;
close;
v=0.31;//poisson's ratio
bv=.25*10^-9;//burger's vector in m
ri=1.1*10^-9;//in m
r0=10^5*bv;//in m
sm=45*10^9;//shear modulous in n/sqm
gb_2=sm*bv^2;
u_ed=(gb_2/(4*3.14*(1-v)))*log(r0/ri);
disp(u_ed,"Elastic Strain Energy of Edge dislocation (in J/m) = ");
u_sd=(gb_2/(4*3.14))*log(r0/ri);
disp(u_sd,"Elastic Strain Energy of Screw dislocation (in J/m) = ");
r=u_ed/u_sd;//ratio
disp(r,"Ratio of energies of edge dislocation over screw dislocation = ");