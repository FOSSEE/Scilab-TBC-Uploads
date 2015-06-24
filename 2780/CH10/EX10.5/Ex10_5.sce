clc
//to calculate number of ampere turns
l=0.5 //length in m
mu=6.5*10^-3 //permeability of iron in henry/m
A=2*10^-4 //area of cross-section in m^-4
R=l/(mu*A) //reluctance in A-turns/weber
flux=4*10^-4 //in weber
mmf=flux*R
disp("the number of ampere turns is mmf="+string(mmf)+"ampere-turns")
