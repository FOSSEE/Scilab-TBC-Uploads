//Example 1_41
clc();
clear;
//To calculate the wavelength of monochromatic light
betaa=0.4                   //units in mm
betaa=0.4*10^-1            //units in cm
d=0.1                     //units in cm
D=80                     //units in cm
lemda=(d*betaa)/D*10^8
printf("The wavelength of monochromatic light is %.0f angstroam",lemda)
