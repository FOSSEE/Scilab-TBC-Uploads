clc 
clear
//INPUT DATA
n=6.5*10^28 //conduction electron in m^-3
r=1.435*10^-8 //metal resistivity in ohm-metre
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of a electron in kg

//CALCULATION
T=(m/(r*n*e^2))/10^-14//relaxation time of conduction electrons in s*10^-14

//OUTPUT
printf('The relaxation time of conduction electrons is %3.3f*10^-14 s',T)
