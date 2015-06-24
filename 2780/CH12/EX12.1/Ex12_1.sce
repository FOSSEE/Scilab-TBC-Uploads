clc
//to calculate electric flux
//electric flux through a surface is phi=vector(E)*vector(s)
//where vector E=2i+4j+7k,vector s=10j
E=4                  //E=4j
s=10                   //s=10j
phi=E*s
disp("electric flux is phi="+string(phi)+"units")
//to calculate flux coming out of any face of the cube
q=1          //charge in coulomb
epsilon0=8.85*10^-12             //permittivity in free space in coul^2/N-m^2
phi1=q/(6*epsilon0)
disp("flux coming out of any face of the cube is phi1="+string(phi1)+"N-m^2/coul^2")
