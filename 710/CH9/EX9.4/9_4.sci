clc();
clear;
//To calcuate the potential difference
h=6.626*10^-34;                          //plancks constant
c=3*10^8;                                //speed of light
lambda=175*10^-9;                        //wavelength of light
w=5;                                     //work function of nickel
E=(h*c)/(lambda*1.6*10^-19);             //Energy of 200 nm photon
//From photoelectric equation E-w is the potential difference
p=E-w                                    //potential difference required to stop the fastest electron
printf("The potential difference that should be applied to stop fastest photoelectron emitted by the surface is %f eV",p);