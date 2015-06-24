clc();
clear;

//To calculate the magnetic field
//e/m is gyromagnetic ratio.
deltalambda=0.01*10^-9;                         //Zeeman shift
c=3*10^8;                                      //speed of light in  vacuum in m/s
lambda=600*(10)^-9;                            //wavelength in m
e=1.6*10^-19;
m=9.1*10^-31;
B=(deltalambda*4*(%pi)*m*c)/(e*(lambda)^2)    //uniform magnetic field
printf("Magnetic field is %f T",B);