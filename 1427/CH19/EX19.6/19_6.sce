//ques-19.6
//Determining number of photons of light required
clc
w=400;//wavelength (in nm)
E1=1;//energy required (in J)
E=(6.63*10^-34*3*10^8)/(w*10^-9);//energy of 1 photon (in J)
n=E1/E;
printf("The number of photons of light are %.2f*10^18.",n*10^-18);
