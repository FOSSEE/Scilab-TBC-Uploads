//Chapter 16 : MAGNETIC MATERIALS

clear;

//Variable declaration
H=10**6                //Magnetic Field Strength in ampere/m
x=0.5*10**-5           //Magnetic susceptibility 
mu_0=4*%pi*10**-7

//Calculatiions
M=x*H
B=mu_0*(M+H)

//Result
mprintf("Intensity of Magnetization=%d ampere/m",M)
mprintf("\nFlux density in the material=%f weber/m^2",B)
