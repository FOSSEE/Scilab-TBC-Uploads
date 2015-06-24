// Chapter 1_Principles of Quantum Mechanics
//Caption_Photon Energy
//Ex_1//page 3
disp("X-Rays wavelength lambda=0.708*10^-8 cm");
lambda=0.708*(10^-10);//Wavelength
h=6.625*(10^-34);// Plank's constant
c=3*10^8  //speed of light

E=(h*c)/lambda;
printf('The photon energy corresponding to given wavelength is %fd J\n',E)
Evv=E/(1.6*(10^-19));
printf('Energy in the units of ev is %fd eV \n',Evv)