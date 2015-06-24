
clc
clear

//INPUT
E=1*1.6*10^-16;//Kinetic energy of electron in J
m=9.1*10^-31;//Mass of electron in Kg
c=3*10^8;//Speed of light in m/s

//CALCULATIONS
v=sqrt((2*E)/m)//Velocity of the electron in m/s
M=(m/sqrt(1-(v^2/c^2)))/10^-31//Mass of the electron in kg

//OUTPUT
mprintf('Mass of electron having energy 1 keV is %5.4f*10^-31 kg',M)
