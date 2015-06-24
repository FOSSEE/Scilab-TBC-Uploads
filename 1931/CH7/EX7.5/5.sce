clc
clear
//INPUT DATA
r=1.72*10^-8//resistivity of copper  in ohm metre
T=293//temperature of copper in k
n=8.48*10^28 //density of free electron in m^-3
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of a electron in kg
k=1.38*10^-23//boltzmann constant in m^2 Kg s^-2 k^-1

//CALCULATION
t=(m/(r*n*(e^2)))//relaxation time in s
v=sqrt((3*k*T)/m) //thermal velocity in ms^-1
L=t*v/10^-9//mean free path between collision of free electrons in copper in m*10^-9

//OUTPUT
printf('The mean free path between collision of free electrons in copper is %3.4f *10^-9 m',L)
