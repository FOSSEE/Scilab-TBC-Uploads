//Example 9.8, page 358
clc
//Energy of K shell
z=26
k=2
E_k=13.6*(z-k)^2//in ev
v=7.8*10^3//in V
//for L shell
l=10
E_l=13.6*(z-l)^2//in ev
h=E_k-E_l
R_m=1.1*10^7
x=R_m*(z-2)^2//x=1/lamda
lambda=1/x
printf("\n The wavelength is  %e  m",lambda)

