//clc();
clear;
// To determine the refractive index of the transparent sheet in Newton's ring experiment
lambda=5460*10^(-8);           //wavelength of light in centimetres
t=6.3*10^(-4);                  //thickness of the transparent material in centimetres
n=6;
mew=((n*lambda)/t)+1;
printf("the refractive index of the transparent sheet when the central bright fringe is occupied by the 6th bright fringe is mew=%f",mew);
