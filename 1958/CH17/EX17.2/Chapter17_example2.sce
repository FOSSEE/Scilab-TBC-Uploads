clc
clear
//Input data
wf=1.9//Workfunction of the material in eV
w=3000//Wavelength of the light in Angstrom units
v=(3*10^8)//Velocity of light in m/s
c=(1.6*10^-19)//Charge of the electron in coloumbs
h=6.626*10^-34//Plancks constant in Js

//Calculations
V=(1/c)*(((h*v)/(w*10^-10))-(wf*c))//Stopping potential in V

//Output
printf('Stopping potential is %3.2f V',V)
