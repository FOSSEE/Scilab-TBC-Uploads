clc
//initialization of variables
clear
// linked to 6_14
D=10 //cm
d= 1 //cm
n=20
P=60 //kg
G=8*10^5 //kg/cm^2
// calculations
m=D/d
fs=8*P*D/(d^3*%pi)
fs1=fs*(1+0.615/m+3/(4*m-4))
// results
printf('The shear stress with and without correction facor are \n respectively %d, %d kg/cm^2',fs,fs1)
