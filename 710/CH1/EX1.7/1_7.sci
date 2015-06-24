clc();
clear;//To calculate the output power of the sound source
r=3;                        //distance in m
I=0.86;                     //Intensity of sound source in W/m^2
P=4*(%pi)*r^2*I             //Power of the sound source
printf("The output power of the sound source  of intensity 0.86 W/m^2 at a distance of 3m is %f W",P);