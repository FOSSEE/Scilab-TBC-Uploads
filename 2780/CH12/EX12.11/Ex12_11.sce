clc
//to calculate skin depth 
f=10^8 //frequency
sigma=3*10^7 //conductivity of the medium
muo=4*%pi*10^-7 //permeability of free space
del=sqrt(2/(2*%pi*f*sigma*muo))
disp("skin depth is del="+string(del)+"m")
