clc
//initialisation of variables
N= 6.023*10^23 //molecules
a= 10^-24
k= 0.89
cl= 3.60
M= 74.56 //gms
d= 1.989 //g/cm^3
//CACLULATIONS
Rm= 4*%pi*N*(k+cl)*a/3
r= Rm*d/M
n= sqrt((2*r+1)/(1-r))
//RESULTS
printf (' index of refraction= %.3f ',n)
