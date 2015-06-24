clc
//to calculate increase in radius 
q=4.8*10^-8         //charge in coulomb
r=10*10^-2 //radius in m
epsilon0=8.85*10^-12  //C^2/N-m^2
P=10^5 //N/m^2
dr=(q^2)/(96*((%pi)^2)*(r^3)*epsilon0*P)
disp("increase in radius is dr="+string(dr)+"m")
