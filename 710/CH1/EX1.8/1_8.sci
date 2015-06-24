clc();
clear;
//To determine the output power of the sound source
d=60;                    //Number of decibels given by 10*log(I/I0)
I0=10^-12;               //Initial intensity of sound
I=10^-6;                 //since 10log(I/I0)=60
r=200;                   //distance in m
P=4*(%pi)*r^2*I
printf("The output power of the sound source at a distance of 200m after the intensity reduces to a level of 60dB is %f W",P);
