clc
//to calculate refractive index of the cladding
a=35*10^-6 //core diameter in micrometre
//formula is del=(n1-n2)/n1
//we get
del=1.5/100 
n1=1.46 //refractive index of the fibre 
lambda=0.85*10^-6 //wavelength in micrometer
n2=n1-del*n1
disp("refractive index is n2="+string(n2)+"unitless")
//to calculate normalised frequency V number of the fibre
V=(2*%pi*a*n1*0.173)/lambda
disp("normalised frequency V number of the fibre is V="+string(V)+"unitless")
//to calculate total number of guided modes in the fibre
M=(V^2)/2
disp("total number of guided modes in the fibre is M="+string(M)+"modes")


