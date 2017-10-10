//ques-19.5
//Calculating wavelength of a moving electron
clc
KE=4.55*10^-25;//kinetic energy (in J)
v=sqrt((2*KE)/(9.1*10^-31));
w=(6.6*10^-34)/(9.1*10^-31*v);
printf("The wavelength of the electron is %.0f nm.",w*10^9);
