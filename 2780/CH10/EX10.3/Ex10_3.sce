clc
//to calculate magnetic moment of the rod
//formula is B=muo*(H+I)
//where H=ni
n=500 //number of turns in turns/m
i=0.5 //current passed through the solenoid in A
mur=1200 //relative permeability
I=(mur-1)*n*i //intensity of magnetisation in A/m
V=10^-3 //volume in m^3
M=I*V
disp("the magnetic moment of the rod is M="+string(M)+"A-m^2")
