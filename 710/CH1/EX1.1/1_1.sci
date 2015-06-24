clc();
clear;
//To calculate intensity of sound

p=50;                   //sound waves with output power in W
r=4;                   //Distance in m
I=p/(4*%pi*r^2)       //Intensity in W/m^2
printf("Intensity of sound at a distance of 4m from the source is %f W/m^2",I);
