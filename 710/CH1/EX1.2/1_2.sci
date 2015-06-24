clc();
clear;
//To determine the distance when intensity or power of source of sound changes
//Io=10^-12;              //Initial intensity of sound
//d=50;                   //d=number of decibels given by 10log(Io/I1)
//Therefore I1=10^5Io=10^-7W/m^2
I1=10^(-7);
P=70;                    //Output power in W
r=sqrt(P/(4*(%pi)*I1))   //distance in m
printf("The distance at which sound reduces to a level of 50dB is %f m",r);