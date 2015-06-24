clc

T=300 //K
u=1000 //cm^2/s
k=8.617*10^-5 //eV/K
e=1.6*10**-19 //C

//D=((k*T)/e)*u
D=k*T*u
disp(D,"diffusion coefficient in cm^2/s is =")
