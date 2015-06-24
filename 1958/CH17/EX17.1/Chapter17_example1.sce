clc
clear
//Input data
w=4000//Wavelength of the light in Angstrom units
wf=2.25//Work function of potassium in eV
m=(9.1*10^-31)//Mass of the electron in kg
v=(3*10^8)//Velocity of light in m/s
c=(1.6*10^-19)//Charge of the electron in coloumbs
h=6.626*10^-34//Plancks constant in Js

//Calculations
E=(h*v)/(w*10^-10*c)//Energy of incident photon in eV
KE=(E-wf)//Kinetic energy in eV

//Output
printf('Maximum kinetic energy of photoelectron is %3.3f eV',KE)
