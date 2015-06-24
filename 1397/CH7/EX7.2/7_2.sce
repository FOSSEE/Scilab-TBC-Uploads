//clc();
clear;
//To calculate wavelength of emitted photons
Eg=3*1.6*10^-19;            //energy gap in J
C=3*10^8;        //velocity of photon in m/s
h=6.6*10^-34;       //plank's constant in Js
lambda=(h*C)/Eg;
printf("wavelength of emitted photons in m is");
disp(lambda);
lambda=lambda*10^9;       //converting into nm
printf("wavelength of emitted photons in nm is");
disp(lambda);

//answer in book is wrong
