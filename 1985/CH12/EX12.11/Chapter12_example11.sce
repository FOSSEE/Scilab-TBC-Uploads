clc
clear
//Input data
l=2500*10^-10//Wavelength of light used in m
W=4.2//Workfunction of aluminium in eV
h=6.625*10^-34//Plancks constant in J.s
c=3*10^8//Velocity of light in m/s
e=1.6*10^-19//Charge of electron in Columbs

//Calculations
KE=((h*c/l)-(W*e))/10^-19//Kinetic energy of the photoelectron in J*10^-19
Vs=(KE*10^-19/e)//Stopping potential in V

//Output
printf('The K.E of the fastest moving electron is %3.2f*10^-19 J \n The stopping potential is %3.5f V',KE,Vs)
