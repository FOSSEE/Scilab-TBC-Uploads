//Initialisation of variables
clc
r=1.278e-8
n=4//number of molecules per unit cell
M=63.54//for copper
a=4*r/sqrt(2)
N=6.023e23
d=n*M/(a^3*N)
printf('density is %f gm per cms \n',d)

