//ques-19.9
//Calculating kinetic energy of a moving electron
clc
w=4.8;//wavelength (in pm)
m=9.11*10^-31;//mass of electron (in kg)
h=6.63*10^-34;//(in Js)
v=h/(m*w*10^-12);//velocity of electron (in m/s)
KE=(1/2)*m*v^2;
printf("The kinetic energy of the electron is %.3f*10^-14 J.",KE*10^14);
