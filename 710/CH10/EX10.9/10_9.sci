clc();
clear;
//To determine the potential diference
h=6.626*10^-34;                    //plancks constant
lambda=589*10^-9;                  //wavelength in m
m=9.1*10^-31;                      //mass of electron
e=1.6*10^-19;
V=((h^2)/((lambda^2)*2*m*e))*10^6  //potential diference
printf("The potential difference through which an electron should be accelerated to have a wavelength of 589 nm is %f microV ",V);