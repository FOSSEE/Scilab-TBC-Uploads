clc
//to calculate flux density,magnetic intensity,permeability of iron
phi=2*10^-6 //flux in the ring in weber
A=10^-4 //cross-sectional area in m^2
B=phi/A 
disp("flux density is B="+string(B)+"weber/m^2")
N=200 //number of turns
i=0.30 //current flows in the windings in A
l=0.2 //length in m
H=N*i/l
disp("magnetic intensity is H="+string(H)+"A-turn/m")
mu=B/H
disp("permeability is mu="+string(mu)+"weber/A-m")
muo=4*%pi*10^-7 
mur=mu/muo
disp("relative permeability is mur="+string(mur)+"unitless")
