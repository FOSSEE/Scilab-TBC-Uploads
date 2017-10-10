//ques-19.12
//Calculating de Broglie wavelength of a moving electron
clc
KE=4.9*10^-25;//kinetic energy (in J)
m=9.1*10^-31;//mass of electron (in kg)
h=6.6*10^-34;//(in Js)
w=h/sqrt(2*KE*m);
printf("The de-Broglie wavelength of the moving electron is %.0f nm.",w*10^9);
