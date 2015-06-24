clc
clear
//input
p=1.01*10^7 //pressure of gas
v=0.1 //volume of gas
R=8.3
T=280//temperature
g=0.017//mass of 1 mole
d=1100//density
//calculation
n=p*v/(R*T)//ideal gas equation
m=n*g//mass of gas
v=m/d//volume occupied
//output
printf("the volume is %3.3e m^3",v)
