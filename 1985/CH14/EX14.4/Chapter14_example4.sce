clc
clear
//Input data
r=1.54*10^-8//Resistivity in ohm.m
Ef=5.5//Fermi energy in eV
n=5.8*10^28//Concentration of electrons in m^-3
E=100//Electric field applied n V/m
e=1.6*10^-19//Electron charge in Columbs
m=9.1*10^-31//Mass of electron in kg

//Calculations
t=(m/(r*n*e^2))/10^-14//Relaxation time in s*10^-14
u=((e*t*10^-14)/m)/10^-3//Mobility of the electron in m^2.V^-1.s^-1*10^-3
v=(e*t*10^-14*E)/m//Drift velocity in m/s
vf=(sqrt((2*Ef*e)/m))/10^6//Fermi velocity in m/s*10^6
l=(vf*10^6*t*10^-14)/10^-8//Mean free path in m*10^-8

//Output
printf('The relaxation time of electrons is %3.2f*10^-14 s \n The mobility of the electrons is %3.2f*10^-3 m^2.V^-1.s^-1 \n The drift velocity of electrons is %3.3f m/s \n The fermi velocity of electrons is %3.2f*10^6 m/s \n The mean free path is %3.2f*10^-8 m',t,u,v,vf,l)
