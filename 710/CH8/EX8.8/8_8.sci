clc();
clear;
// To determine e/m ratio
//e/m=(deltalambda*4*pi*c)/(B*(lambda)^2)
deltalambda=0.01*10^-9;                           //Zeeman shift
c=3*(10^8);                                      //speed of light in vacuum in m/s
B=0.78;                                          //magnetic field
lambda=550*(10^-9);                              //wavelength in nm
Y=(deltalambda*4*(%pi)*3*(10^8))/(B*(lambda)^2)  //e/m ratio
printf("e/m =%e",Y);
