//Example 2_4_1
clc();
clear;
//To calculate the wavelength of light
D=150                     //units in centimeters
d=0.03                    //units in centimeters
betaa=0.3                 //units in centimeters
lemda=((betaa*d)/D)*10^8
printf("Wavelength of the light is %.0f angstrom",lemda)
