//Example 8_3
clc();
clear;
//To calculate the depth of the sea and the wavelength of pulse
v=1700                             //units in meter per second
f=0.07*10^6                       //units in Hz
t=0.65                           //units in seconds
l=(v*t)/2
printf("The depth of the sea is %.2f meters",l)
lemda=v/f
printf("\n\nThe wavelength of pulse is %.3f meters",lemda)
