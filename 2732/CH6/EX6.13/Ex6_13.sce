clc
// initialization of variables
clear
d=10 //cm
t =1 //mm
T= 100 //kg-m
L=5 //m
G=8*10^5 //kg/cm^2

//calculations
r=d/2
fs=T*r*100/(r^2*2*%pi*L*t*10^-1)
U=fs^2/(2*G)
U1=U*(%pi*L*100)
// results
printf('Energy per unit volume = %.3f kg-cm/cm^3',U)
printf('\n Total strain energy= %d kg-cm',U1)
