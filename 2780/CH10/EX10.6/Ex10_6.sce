clc
//to calculate relative permeability of the medium
phi=1.5*10^-3 //magnetic flux in weber
l=%pi*50*10^-2 //length in m
A=10*10^-4 //area of cross-section
N=1000 //number of turns
i=5 //current in A
muo=4*%pi*10^-7
//phi(magnetic flux)=m.m.f/reluctance
//phi=N*i*muo*mur*A/l
//we get,
mur=phi*l/(N*i*A*muo)
disp("relative permeability of the medium is mur="+string(mur)+"unitless")
