clc();
clear;
//To determine the wavelength which has high transmission
mew=1.38;             //refractiveindex of magnesium floride
t=175;                //thickness of coating of magnesium fluoride in nm
lambda=4*t*mew        //wavelength
printf("The wavelength which has high transmission is %f nm",lambda);