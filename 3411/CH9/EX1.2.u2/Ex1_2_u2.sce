//Example 1_2_u2
clc();
clear;
//To calculate the wavelength of the  radiation emitted
h=6.63*10^-34           //units in m^2 kg s^-1
m=9.1*10^-31       //units in Kgs
l=1            //units in nm
l=l*10^-9     //units in meters
c=3*10^8       //units in meters/sec
lamda=(8*m*c*l^2)/(27*h)  //units in meters
lamda=lamda*10^9        //units in nm
printf("The wavelength of the radiation is lamda=%.1fnm",lamda)
