clc;
clear;
l=3*10^-3 //distance between two plate in meters
V=400 //potential difference in Volts
e=1.602*10^-19 //electronic charge in Joules
m=9.1*10^-31 //mass of electron in kg

//Calculation
uB=sqrt((2*V*e)/m) //in m/s
KEJ=e*V //in  Joules
KEeV=int(e*V/(1.6*10^-19)) //in eV
tAB=(2*l/uB) //in ns

mprintf("i)")
mprintf("Velocity with which the electrons strikes the plate =")
format("e",10)
disp(uB)
mprintf("ii)")
mprintf("Kinetic energy acquired by electron in joules =")
disp(KEJ)
mprintf("Kinetic energy acquired by electron in eV =")
disp(KEeV)
mprintf("iii)")
mprintf("transit time in ns = ")//The answers vary due to round off error
disp(tAB)
